#include <core.p4>
#define V1MODEL_VERSION 20200408
#include <v1model.p4>

struct intrinsic_metadata_t {
    bit<48> ingress_global_timestamp;
    bit<16> mcast_grp;
    bit<16> egress_rid;
}

struct ingress_metadata_t {
    bit<32> starting_port;
    bit<32> all_ports;
    bit<32> out_port_xor;
    bit<8>  pkt_curr;
    bit<8>  pkt_par;
    bit<8>  out_port;
    bit<8>  if_out_failed;
    bit<1>  pkt_start;
    bit<1>  is_dest;
    bit<1>  is_completed;
}

header header_dfs_t {
    bit<8> pkt_v1_curr;
    bit<8> pkt_v1_par;
    bit<8> pkt_v2_curr;
    bit<8> pkt_v2_par;
    bit<8> pkt_v3_curr;
    bit<8> pkt_v3_par;
    bit<8> pkt_v4_curr;
    bit<8> pkt_v4_par;
}

header header_ff_tags_t {
    bit<64> preamble;
    bit<8>  shortest_path;
    bit<8>  path_length;
    bit<1>  is_edge;
    bit<1>  dfs_start;
}

struct metadata {
    @name(".local_metadata") 
    ingress_metadata_t local_metadata;
}

struct headers {
    @name(".dfsTag") 
    header_dfs_t     dfsTag;
    @name(".ff_tags") 
    header_ff_tags_t ff_tags;
}

parser ParserImpl(packet_in packet, out headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    @name(".start") state start {
        packet.extract(hdr.ff_tags);
        packet.extract(hdr.dfsTag);
        meta.local_metadata.pkt_curr = hdr.dfsTag.pkt_v1_curr;
        meta.local_metadata.pkt_par = hdr.dfsTag.pkt_v1_par;
        meta.local_metadata.pkt_start = hdr.ff_tags.dfs_start;
        transition accept;
    }
}

@name(".all_ports_status") register<bit<32>, bit<32>>(32w1) all_ports_status;

control ctrl_dfs_routing(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    @name(".skip_failures") action skip_failures(bit<8> _working) {
        meta.local_metadata.out_port = _working;
    }
    @name(".xor_outport") action xor_outport(bit<32> _all_ports) {
        all_ports_status.read(meta.local_metadata.all_ports, (bit<32>)32w0);
        meta.local_metadata.out_port_xor = meta.local_metadata.all_ports ^ _all_ports;
    }
    @name(".set_next_port") action set_next_port() {
        meta.local_metadata.pkt_curr = meta.local_metadata.pkt_curr + 8w1;
        meta.local_metadata.out_port = meta.local_metadata.pkt_curr;
    }
    @name(".set_parent") action set_parent() {
        meta.local_metadata.pkt_par = (bit<8>)standard_metadata.ingress_port;
        hdr.dfsTag.pkt_v1_par = meta.local_metadata.pkt_par;
    }
    @name(".send_on_parent") action send_on_parent() {
        meta.local_metadata.out_port = meta.local_metadata.pkt_par;
        meta.local_metadata.is_completed = 1w1;
    }
    @name(".set_if_status") action set_if_status(bit<8> _value) {
        meta.local_metadata.if_out_failed = _value;
    }
    @name(".skip_parent") action skip_parent() {
        meta.local_metadata.out_port = meta.local_metadata.out_port + 8w1;
    }
    @name(".start_from_one") action start_from_one() {
        meta.local_metadata.out_port = 8w1;
        meta.local_metadata.is_completed = 1w0;
    }
    @name(".starting_port_meta") action starting_port_meta(bit<32> port_state) {
        meta.local_metadata.starting_port = port_state;
        all_ports_status.read(meta.local_metadata.all_ports, (bit<32>)32w0);
    }
    @name(".send_to_parent") action send_to_parent() {
        meta.local_metadata.out_port = meta.local_metadata.pkt_par;
        meta.local_metadata.is_completed = 1w1;
    }
    @name(".outport_to_parent") action outport_to_parent() {
        meta.local_metadata.out_port = meta.local_metadata.pkt_par;
        meta.local_metadata.is_completed = 1w1;
    }
    @name(".next_outport") action next_outport() {
        meta.local_metadata.out_port = meta.local_metadata.out_port + 8w1;
    }
    @name(".check_out_failed") table check_out_failed {
        actions = {
            skip_failures;
        }
        key = {
            meta.local_metadata.starting_port: ternary;
            meta.local_metadata.all_ports    : ternary;
        }
    }
    @name(".check_outport_status") table check_outport_status {
        actions = {
            xor_outport;
        }
    }
    @name(".curr_eq_ingress") table curr_eq_ingress {
        actions = {
            set_next_port;
        }
    }
    @name(".curr_eq_zero") table curr_eq_zero {
        actions = {
            set_parent;
        }
    }
    @name(".hit_depth") table hit_depth {
        actions = {
            send_on_parent;
        }
    }
    @name(".if_status") table if_status {
        actions = {
            set_if_status;
        }
        key = {
            meta.local_metadata.starting_port: ternary;
            meta.local_metadata.out_port_xor : ternary;
        }
    }
    @name(".jump_to_next") table jump_to_next {
        actions = {
            skip_parent;
        }
    }
    @name(".out_eq_zero") table out_eq_zero {
        actions = {
            start_from_one;
        }
    }
    @name(".set_egress_port") table set_egress_port {
        actions = {
            starting_port_meta;
        }
        key = {
            meta.local_metadata.out_port: exact;
        }
    }
    @name(".set_parent_out") table set_parent_out {
        actions = {
            send_to_parent;
        }
    }
    @name(".to_parent") table to_parent {
        actions = {
            outport_to_parent;
        }
    }
    @name(".try_next") table try_next {
        actions = {
            next_outport;
        }
    }
    apply {
        if (meta.local_metadata.pkt_curr == 8w0) {
            curr_eq_zero.apply();
        }
        curr_eq_ingress.apply();
        if (meta.local_metadata.out_port == 8w5) {
            hit_depth.apply();
        }
        if (meta.local_metadata.is_completed == 1w0) {
            set_egress_port.apply();
            if (meta.local_metadata.out_port != 8w4) {
                check_out_failed.apply();
            } else {
                check_outport_status.apply();
                if_status.apply();
                if (meta.local_metadata.if_out_failed == meta.local_metadata.out_port) {
                    try_next.apply();
                    if (meta.local_metadata.out_port == 8w5) {
                        to_parent.apply();
                    }
                }
            }
            if (meta.local_metadata.is_completed == 1w0 && meta.local_metadata.out_port == meta.local_metadata.pkt_par) {
                jump_to_next.apply();
                if (meta.local_metadata.out_port == 8w5) {
                    set_parent_out.apply();
                }
            }
        }
        if (meta.local_metadata.is_completed == 1w1) {
            if (meta.local_metadata.out_port == 8w0) {
                out_eq_zero.apply();
            }
        }
    }
}

control egress(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    apply {
    }
}

control ingress(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    @name(".set_default_route") action set_default_route(bit<8> send_to) {
        meta.local_metadata.out_port = send_to;
    }
    @name(".towards_parent") action towards_parent() {
        standard_metadata.egress_spec = (bit<9>)meta.local_metadata.out_port;
        hdr.ff_tags.path_length = hdr.ff_tags.path_length + 8w1;
    }
    @name(".fwd") action fwd(bit<9> _port) {
        standard_metadata.egress_spec = _port;
        hdr.dfsTag.pkt_v1_curr = (bit<8>)_port;
        hdr.ff_tags.path_length = hdr.ff_tags.path_length + 8w1;
    }
    @name(".set_out_meta") action set_out_meta(bit<32> meta_state) {
        meta.local_metadata.starting_port = meta_state;
        all_ports_status.read(meta.local_metadata.all_ports, (bit<32>)32w0);
    }
    @name(".set_dfs_tags") action set_dfs_tags() {
        meta.local_metadata.pkt_start = 1w1;
        hdr.ff_tags.dfs_start = meta.local_metadata.pkt_start;
        meta.local_metadata.out_port = 8w1;
    }
    @name(".default_route") table default_route {
        actions = {
            set_default_route;
        }
        key = {
            standard_metadata.ingress_port: exact;
        }
    }
    @name(".fwd_parent") table fwd_parent {
        actions = {
            towards_parent;
        }
    }
    @name(".fwd_pkt") table fwd_pkt {
        actions = {
            fwd;
        }
        key = {
            meta.local_metadata.starting_port: ternary;
            meta.local_metadata.all_ports    : ternary;
        }
    }
    @name(".set_out_port") table set_out_port {
        actions = {
            set_out_meta;
        }
        key = {
            meta.local_metadata.out_port: exact;
        }
    }
    @name(".start_dfs") table start_dfs {
        actions = {
            set_dfs_tags;
        }
    }
    @name(".ctrl_dfs_routing") ctrl_dfs_routing() ctrl_dfs_routing_0;
    apply {
        if (hdr.dfsTag.isValid()) {
            if (meta.local_metadata.pkt_start == 1w0) {
                default_route.apply();
                if (meta.local_metadata.out_port == 8w0) {
                    start_dfs.apply();
                }
            } else {
                ctrl_dfs_routing_0.apply(hdr, meta, standard_metadata);
            }
            if (meta.local_metadata.is_completed == 1w1) {
                fwd_parent.apply();
            } else {
                set_out_port.apply();
                fwd_pkt.apply();
            }
        }
    }
}

control DeparserImpl(packet_out packet, in headers hdr) {
    apply {
        packet.emit(hdr.ff_tags);
        packet.emit(hdr.dfsTag);
    }
}

control verifyChecksum(inout headers hdr, inout metadata meta) {
    apply {
    }
}

control computeChecksum(inout headers hdr, inout metadata meta) {
    apply {
    }
}

V1Switch(ParserImpl(), verifyChecksum(), ingress(), egress(), computeChecksum(), DeparserImpl()) main;

