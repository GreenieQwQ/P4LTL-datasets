#include <core.p4>
#include <v1model.p4>

typedef bit<48> EthernetAddress;
typedef bit<32> IPv4Address;
typedef bit<4> PortId;

// Physical Ports
const PortId DROP_PORT = 0xF;
// UDP Ports
const bit<16> ACCEPTOR_PORT = 0x8889;
const bit<16> LEARNER_PORT = 0x8890;
const bit<16> APPLICATION_PORT = 56789;
// standard headers
header ethernet_t {
    EthernetAddress dstAddr;
    EthernetAddress srcAddr;
    bit<16> etherType;
}

header arp_t {
    bit<16> hrd;
    bit<16> pro;
    bit<8> hln;
    bit<8> pln;
    bit<16> op;
    bit<48> sha;
    bit<32> spa;
    bit<48> tha;
    bit<32> tpa;
}

header ipv4_t {
    bit<4> version;
    bit<4> ihl;
    bit<8> diffserv;
    bit<16> totalLen;
    bit<16> identification;
    bit<3> flags;
    bit<13> fragOffset;
    bit<8> ttl;
    bit<8> protocol;
    bit<16> hdrChecksum;
    IPv4Address srcAddr;
    IPv4Address dstAddr;
}

header icmp_t {
    bit<8> icmpType;
    bit<8> icmpCode;
    bit<16> hdrChecksum;
    bit<16> identifier;
    bit<16> seqNumber;
    bit<256> payload;
}

header udp_t {
    bit<16> srcPort;
    bit<16> dstPort;
    bit<16> length_;
    bit<16> checksum;
}

// Headers for Paxos
#define PAXOS_1A 0 
#define PAXOS_1B 1 
#define PAXOS_2A 2
#define PAXOS_2B 3 

#define MSGTYPE_SIZE    16
#define INSTANCE_SIZE   32
#define ROUND_SIZE      16
#define DATAPATH_SIZE   16
#define VALUELEN_SIZE   32
#define VALUE_SIZE      256
#define INSTANCE_COUNT  65536


header paxos_t {
    bit<MSGTYPE_SIZE>   msgtype;    // indicates the message type e.g., 1A, 1B, etc.
    bit<INSTANCE_SIZE>  inst;       // instance number
    bit<ROUND_SIZE>     rnd;        // round number
    bit<ROUND_SIZE>     vrnd;       // round in which an acceptor casted a vote
    bit<DATAPATH_SIZE>  acptid;     // Switch ID
    bit<VALUELEN_SIZE>  paxoslen;   // the length of paxos_value
    bit<VALUE_SIZE>     paxosval;   // the value the acceptor voted for
}

struct headers {
    ethernet_t ethernet;
    arp_t arp;
    ipv4_t ipv4;
    icmp_t icmp;
    udp_t udp;
    paxos_t paxos;
}

struct paxos_metadata_t {
    bit<ROUND_SIZE> round;
    bit<1> set_drop;
    bit<8> ack_count;
    bit<8> ack_acceptors;
}

struct metadata {
    paxos_metadata_t   paxos_metadata;
}


#define ETHERTYPE_IPV4 16w0x0800
#define ETHERTYPE_ARP 16w0x0806
#define ICMP_PROTOCOL 8w0x1
#define UDP_PROTOCOL 8w0x11
#define PAXOS_PROTOCOL 16w0x8888

parser TopParser(packet_in b, out headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    state start {
        transition parse_ethernet;
    }

    state parse_ethernet {
        b.extract(hdr.ethernet);
        transition select(hdr.ethernet.etherType) {
            ETHERTYPE_ARP : parse_arp;
            ETHERTYPE_IPV4 : parse_ipv4;
        }
    }

    state parse_arp {
        b.extract(hdr.arp);
        transition accept;
    }

    state parse_ipv4 {
        b.extract(hdr.ipv4);
        transition select(hdr.ipv4.protocol) {
            ICMP_PROTOCOL : parse_icmp;
            UDP_PROTOCOL : parse_udp;
            default : accept;
        }
    }

    state parse_icmp {
        b.extract(hdr.icmp);
        transition accept;
    }

    state parse_udp {
        b.extract(hdr.udp);
        transition select(hdr.udp.dstPort) {
            PAXOS_PROTOCOL : parse_paxos;
            default : accept;
        }
    }

    state parse_paxos {
        b.extract(hdr.paxos);
        transition accept;
    }
}

control TopDeparser(packet_out packet, in headers hdr) {
    apply {
        packet.emit(hdr.ethernet);
        packet.emit(hdr.arp);
        packet.emit(hdr.ipv4);
        packet.emit(hdr.icmp);
        packet.emit(hdr.udp);
        packet.emit(hdr.paxos);
    }
}

control verifyChecksum(inout headers hdr, inout metadata meta) {
    //Checksum16() ipv4_checksum;
    apply {
        // if (hdr.ipv4.hdrChecksum == ipv4_checksum.get({
        //                                 hdr.ipv4.version,
        //                                 hdr.ipv4.ihl,
        //                                 hdr.ipv4.diffserv,
        //                                 hdr.ipv4.totalLen,
        //                                 hdr.ipv4.identification,
        //                                 hdr.ipv4.flags,
        //                                 hdr.ipv4.fragOffset,
        //                                 hdr.ipv4.ttl,
        //                                 hdr.ipv4.protocol,
        //                                 hdr.ipv4.srcAddr,
        //                                 hdr.ipv4.dstAddr
        //                             }))
        //     mark_to_drop();
    }
}

control computeChecksum(inout headers hdr, inout metadata meta) {
    // Checksum16() ipv4_checksum;
    apply {
        // hdr.ipv4.hdrChecksum = ipv4_checksum.get({
        //                                 hdr.ipv4.version,
        //                                 hdr.ipv4.ihl,
        //                                 hdr.ipv4.diffserv,
        //                                 hdr.ipv4.totalLen,
        //                                 hdr.ipv4.identification,
        //                                 hdr.ipv4.flags,
        //                                 hdr.ipv4.fragOffset,
        //                                 hdr.ipv4.ttl,
        //                                 hdr.ipv4.protocol,
        //                                 hdr.ipv4.srcAddr,
        //                                 hdr.ipv4.dstAddr
        //                             });
    }
}

control ingress(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    register<bit<DATAPATH_SIZE>>(1) registerAcceptorID;
    register<bit<ROUND_SIZE>>(INSTANCE_COUNT) registerRound;
    register<bit<ROUND_SIZE>>(INSTANCE_COUNT) registerVRound;
    register<bit<VALUE_SIZE>>(INSTANCE_COUNT) registerValue;

    register<bit<48>>(1) learner_mac_address;
    register<bit<32>>(1) learner_address;

    action _drop() {
        mark_to_drop();
    }

    action read_round() {
        registerRound.read(meta.paxos_metadata.round, hdr.paxos.inst);
    }

    action handle_1a(bit<16> learner_port) {
        hdr.paxos.msgtype = PAXOS_1B;
        registerVRound.read(hdr.paxos.vrnd, hdr.paxos.inst);
        registerValue.read(hdr.paxos.paxosval, hdr.paxos.inst);
        registerAcceptorID.read(hdr.paxos.acptid, 0);
        registerRound.write(hdr.paxos.inst, hdr.paxos.rnd);
    }

    action handle_2a(bit<16> learner_port) {
        hdr.paxos.msgtype = PAXOS_2B;
        registerAcceptorID.read(hdr.paxos.acptid, 0);
        registerRound.write(hdr.paxos.inst, hdr.paxos.rnd);
        registerVRound.write(hdr.paxos.inst, hdr.paxos.rnd);
        registerValue.write(hdr.paxos.inst, hdr.paxos.paxosval);
    }

    table acceptor_tbl {
        key = {hdr.paxos.msgtype : exact;}
        actions = {
            handle_1a;
            handle_2a;
            _drop;
        }
        size = 4;
        default_action = _drop();
    }

    action forward(PortId port, bit<48> mac_dst, bit<32> ip_dst, bit<16> udp_dst) {
        standard_metadata.egress_spec = (bit<9>)port;
        hdr.ethernet.dstAddr = mac_dst;
        // Set MAC destinate to learners
        hdr.ethernet.dstAddr = mac_dst;
        // Set IP destinate to learners
        hdr.ipv4.dstAddr = ip_dst;
        // Set UDP destinate to learners
        hdr.udp.dstPort = udp_dst;
    }

    table transport_tbl {
        key = { hdr.ipv4.dstAddr : exact; }
        actions = {
            _drop;
             forward;
        }
        size = 2;
        default_action =  _drop();
    }

    register<bit<48>>(1) my_mac_address;
    register<bit<32>>(1) my_ip_address;

    action handle_arp_request() {
        // Swap Ethernet address
        hdr.ethernet.dstAddr = hdr.ethernet.srcAddr;
        my_mac_address.read(hdr.ethernet.srcAddr, 0);
        hdr.arp.op = 2;
        hdr.arp.tha = hdr.arp.sha;
        hdr.arp.tpa = hdr.arp.spa;
        // Fill my hardware address
        my_mac_address.read(hdr.arp.sha, 0);
        my_ip_address.read(hdr.arp.spa, 0);
        standard_metadata.egress_spec = standard_metadata.ingress_port;
    }

    action handle_arp_reply() {

    }

    table arp_tbl {
        key = { hdr.arp.op : exact; }
        actions = {
            handle_arp_request;
            handle_arp_reply;
            _drop;
        }
        size = 3;
        default_action = _drop();
    }

    action handle_icmp_request() {
        // Swap Ethernet address
        hdr.ethernet.dstAddr = hdr.ethernet.srcAddr;
        my_mac_address.read(hdr.ethernet.srcAddr, 0);
        // Swap IP address
        bit<32> ipdst = hdr.ipv4.dstAddr;
        hdr.ipv4.dstAddr = hdr.ipv4.srcAddr;
        hdr.ipv4.srcAddr = ipdst;
        // ICMP Reply
        hdr.icmp.icmpType = 0;
        hdr.icmp.hdrChecksum = hdr.icmp.hdrChecksum + (16w8<<8);
    }

    action handle_icmp_reply() {

    }

    table icmp_tbl {
        key = {hdr.icmp.icmpType : exact;}
        actions = {
            handle_icmp_request;
            handle_icmp_reply;
            _drop;
        }
        size = 4;
        default_action  = _drop();
    }

    apply {
        if (hdr.arp.isValid()) {
            arp_tbl.apply();
        }
        else if (hdr.ipv4.isValid()) {
            if (hdr.paxos.isValid()) {
                read_round();
                if (hdr.paxos.rnd >= meta.paxos_metadata.round) {
                    acceptor_tbl.apply();
                    transport_tbl.apply();
                }
            } else if (hdr.icmp.isValid()) {
                icmp_tbl.apply();
            }
        }
    }
}

control egress(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    table place_holder_table {
        actions = {
            NoAction;
        }
        size = 2;
        default_action = NoAction();
    }
    apply {
        place_holder_table.apply();
    }
}

V1Switch(TopParser(), verifyChecksum(), ingress(), 
    egress(), computeChecksum(), TopDeparser()) main;