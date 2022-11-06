header fixedTLV_t_1 {
    bit<8> tlv_code;
    bit<8> tlv_length;
}

#include <core.p4>
#define V1MODEL_VERSION 20200408
#include <v1model.p4>

struct components_metadata_t {
    bit<16> c1;
    bit<16> c2;
    bit<16> c3;
    bit<16> c4;
}

struct flow_metadata_t {
    bit<8> isInPIT;
    bit<8> hasFIBentry;
    bit<8> packetType;
}

struct name_metadata_t {
    bit<16> name_hash;
    bit<8>  namesize;
    bit<16> namemask;
    bit<8>  tmp;
    bit<8>  components;
}

struct ingress_metadata_t {
    bit<8> tmp;
}

@name("bigTL_t") header bigTL_t_0 {
    bit<8>  tl_code;
    bit<8>  tl_len_code;
    bit<32> tl_length;
}

header ethernet_t {
    bit<48> dstAddr;
    bit<48> srcAddr;
    bit<16> etherType;
}

@name("hugeTL_t") header hugeTL_t_0 {
    bit<8>  tl_code;
    bit<8>  tl_len_code;
    bit<64> tl_length;
}

header fixedTLV_t {
    bit<8>       tlv_code;
    bit<8>       tlv_length;
    varbit<2024> tlv_value;
}

@name("mediumTL_t") header mediumTL_t_0 {
    bit<8>  tl_code;
    bit<8>  tl_len_code;
    bit<16> tl_length;
}

@name("dumbHeaderMedium_t") header dumbHeaderMedium_t_0 {
    bit<144> total;
}

header smallTL_t {
    bit<8> tl_code;
    bit<8> tl_length;
}

@name("dumbHeaderSmall_t") header dumbHeaderSmall_t_0 {
    bit<112> total;
}

struct metadata {
    @name(".comp_metadata") 
    components_metadata_t comp_metadata;
    @name(".flow_metadata") 
    flow_metadata_t       flow_metadata;
    @name(".name_metadata") 
    name_metadata_t       name_metadata;
    @name(".pit_metadata") 
    ingress_metadata_t    pit_metadata;
}

struct headers {
    @name(".big_content") 
    bigTL_t_0            big_content;
    @name(".big_name") 
    bigTL_t_0            big_name;
    @name(".big_tlv0") 
    bigTL_t_0            big_tlv0;
    @name(".ethernet") 
    ethernet_t           ethernet;
    @name(".huge_content") 
    hugeTL_t_0           huge_content;
    @name(".huge_name") 
    hugeTL_t_0           huge_name;
    @name(".huge_tlv0") 
    hugeTL_t_0           huge_tlv0;
    @name(".isha256") 
    fixedTLV_t           isha256;
    @name(".lifetime") 
    fixedTLV_t           lifetime;
    @name(".medium_content") 
    mediumTL_t_0         medium_content;
    @name(".medium_name") 
    mediumTL_t_0         medium_name;
    @name(".medium_ndnlp") 
    dumbHeaderMedium_t_0 medium_ndnlp;
    @name(".medium_tlv0") 
    mediumTL_t_0         medium_tlv0;
    @name(".metainfo") 
    fixedTLV_t           metainfo;
    @name(".nonce") 
    fixedTLV_t           nonce;
    @name(".signature_info") 
    fixedTLV_t           signature_info;
    @name(".signature_value") 
    fixedTLV_t           signature_value;
    @name(".small_content") 
    smallTL_t            small_content;
    @name(".small_name") 
    smallTL_t            small_name;
    @name(".small_ndnlp") 
    dumbHeaderSmall_t_0  small_ndnlp;
    @name(".small_tlv0") 
    smallTL_t            small_tlv0;
    @name(".components") 
    fixedTLV_t[5]        components;
}

parser ParserImpl(packet_in packet, out headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    fixedTLV_t_1 tmp_hdr;
    fixedTLV_t_1 tmp_hdr_0;
    fixedTLV_t_1 tmp_hdr_1;
    fixedTLV_t_1 tmp_hdr_2;
    fixedTLV_t_1 tmp_hdr_3;
    fixedTLV_t_1 tmp_hdr_4;
    fixedTLV_t_1 tmp_hdr_5;
    @name(".parse_afterName") state parse_afterName {
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0x1: parse_isha256;
            8w0xa: parse_nonce;
            8w0x14: parse_metainfo;
            default: accept; //reject
        }
    }
    @name(".parse_big_content") state parse_big_content {
        packet.extract(hdr.big_content);
        meta.name_metadata.namesize = (bit<8>)hdr.big_content.tl_length;
        transition parse_content;
    }
    @name(".parse_big_name") state parse_big_name {
        packet.extract(hdr.big_name);
        transition parse_name;
    }
    @name(".parse_big_tlv0") state parse_big_tlv0 {
        packet.extract(hdr.big_tlv0);
        transition parse_tlv0;
    }
    @name(".parse_components") state parse_components {
        meta.name_metadata.tmp = (packet.lookahead<bit<16>>())[7:0];
        tmp_hdr = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.components.next, (bit<32>)(((bit<32>)tmp_hdr.tlv_length + 32w2) * 8 - 16));
        meta.name_metadata.namesize = meta.name_metadata.namesize - meta.name_metadata.tmp - 8w2;
        transition select(meta.name_metadata.namesize) {
            8w0: parse_afterName;
            default: parse_components;
        }
    }
    @name(".parse_content") state parse_content {
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0x16: parse_signature_info;
            default: accept; //reject
        }
    }
    @name(".parse_ethernet") state parse_ethernet {
        packet.extract(hdr.ethernet);
        transition select(hdr.ethernet.etherType, (packet.lookahead<bit<8>>())[7:0]) {
            (16w0x8624 &&& 16w0xffff, 8w0x50 &&& 8w0xff): parse_ndn_lp;
            (16w0x8624 &&& 16w0xffff, 8w0x50 &&& 8w0x0): parse_ndn;
        }
    }
    @name(".parse_huge_content") state parse_huge_content {
        packet.extract(hdr.huge_content);
        meta.name_metadata.namesize = (bit<8>)hdr.huge_content.tl_length;
        transition parse_content;
    }
    @name(".parse_huge_name") state parse_huge_name {
        packet.extract(hdr.huge_name);
        transition parse_name;
    }
    @name(".parse_huge_tlv0") state parse_huge_tlv0 {
        packet.extract(hdr.huge_tlv0);
        transition parse_tlv0;
    }
    @name(".parse_isha256") state parse_isha256 {
        tmp_hdr_0 = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.isha256, (bit<32>)(((bit<32>)tmp_hdr_0.tlv_length + 32w2) * 8 - 16));
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0xa: parse_nonce;
            8w0x14: parse_metainfo;
            default: accept; //reject
        }
    }
    @name(".parse_lifetime") state parse_lifetime {
        tmp_hdr_1 = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.lifetime, (bit<32>)(((bit<32>)tmp_hdr_1.tlv_length + 32w2) * 8 - 16));
        transition accept;
    }
    @name(".parse_medium_content") state parse_medium_content {
        packet.extract(hdr.medium_content);
        meta.name_metadata.namesize = (bit<8>)hdr.medium_content.tl_length;
        transition parse_content;
    }
    @name(".parse_medium_name") state parse_medium_name {
        packet.extract(hdr.medium_name);
        transition parse_name;
    }
    @name(".parse_medium_ndnlp") state parse_medium_ndnlp {
        packet.extract(hdr.medium_ndnlp);
        transition parse_ndn;
    }
    @name(".parse_medium_tlv0") state parse_medium_tlv0 {
        packet.extract(hdr.medium_tlv0);
        meta.flow_metadata.packetType = hdr.medium_tlv0.tl_code;
        transition parse_tlv0;
    }
    @name(".parse_metainfo") state parse_metainfo {
        tmp_hdr_2 = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.metainfo, (bit<32>)(((bit<32>)tmp_hdr_2.tlv_length + 32w2) * 8 - 16));
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0x15: size_content;
            default: accept; //reject
        }
    }
    @name(".parse_name") state parse_name {
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0x8: parse_components;
            8w0x1: parse_isha256;
            default: accept; //reject
        }
    }
    @name(".parse_ndn") state parse_ndn {
        transition select((packet.lookahead<bit<16>>())[7:0]) {
            8w0xfd: parse_medium_tlv0;
            8w0xfe: parse_big_tlv0;
            8w0xff: parse_huge_tlv0;
            default: parse_small_tlv0;
        }
    }
    @name(".parse_ndn_lp") state parse_ndn_lp {
        transition select((packet.lookahead<bit<16>>())[7:0]) {
            8w0xfd: parse_medium_ndnlp;
            default: parse_small_ndnlp;
        }
    }
    @name(".parse_nonce") state parse_nonce {
        tmp_hdr_3 = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.nonce, (bit<32>)(((bit<32>)tmp_hdr_3.tlv_length + 32w2) * 8 - 16));
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0xc: parse_lifetime;
            default: accept;
        }
    }
    @name(".parse_signature_info") state parse_signature_info {
        tmp_hdr_4 = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.signature_info, (bit<32>)(((bit<32>)tmp_hdr_4.tlv_length + 32w2) * 8 - 16));
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0x17: parse_signature_value;
            default: accept; //reject
        }
    }
    @name(".parse_signature_value") state parse_signature_value {
        tmp_hdr_5 = packet.lookahead<fixedTLV_t_1>();
        packet.extract(hdr.signature_value, (bit<32>)(((bit<32>)tmp_hdr_5.tlv_length + 32w2) * 8 - 16));
        transition accept;
    }
    @name(".parse_small_content") state parse_small_content {
        packet.extract(hdr.small_content);
        meta.name_metadata.namesize = hdr.small_content.tl_length;
        transition parse_content;
    }
    @name(".parse_small_name") state parse_small_name {
        meta.name_metadata.namesize = (packet.lookahead<bit<16>>())[7:0];
        packet.extract(hdr.small_name);
        transition parse_name;
    }
    @name(".parse_small_ndnlp") state parse_small_ndnlp {
        packet.extract(hdr.small_ndnlp);
        transition parse_ndn;
    }
    @name(".parse_small_tlv0") state parse_small_tlv0 {
        packet.extract(hdr.small_tlv0);
        meta.flow_metadata.packetType = hdr.small_tlv0.tl_code;
        transition parse_tlv0;
    }
    @name(".parse_tlv0") state parse_tlv0 {
        transition select((packet.lookahead<bit<8>>())[7:0]) {
            8w0x7: size_name;
            default: accept; //reject
        }
    }
    @name(".size_content") state size_content {
        transition select((packet.lookahead<bit<16>>())[7:0]) {
            8w0xfd: parse_medium_content;
            8w0xfe: parse_big_content;
            8w0xff: parse_huge_content;
            default: parse_small_content;
        }
    }
    @name(".size_name") state size_name {
        transition select((packet.lookahead<bit<16>>())[7:0]) {
            8w0xfd: parse_medium_name;
            8w0xfe: parse_big_name;
            8w0xff: parse_huge_name;
            default: parse_small_name;
        }
    }
    @name(".start") state start {
        transition parse_ethernet;
    }
}

control egress(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    apply {
    }
}

@name(".pit_r") register<bit<8>, bit<16>>(32w65536) pit_r;

control ingress(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
    @name(".storeNumOfComponents") action storeNumOfComponents(bit<8> total) {
        meta.name_metadata.components = total;
    }
    @name("._drop") action _drop() {
        mark_to_drop(standard_metadata);
    }
    @name(".set_egr") action set_egr(bit<9> egress_spec) {
        standard_metadata.egress_spec = egress_spec;
        meta.flow_metadata.hasFIBentry = 8w1;
    }
    @name(".computeNameHashes") action computeNameHashes() {
        hash(meta.comp_metadata.c1, HashAlgorithm.crc16, (bit<16>)0, { hdr.components[0].tlv_value }, (bit<32>)65536);
        hash(meta.comp_metadata.c2, HashAlgorithm.crc16, (bit<16>)0, { hdr.components[0].tlv_value, hdr.components[1].tlv_value }, (bit<32>)65536);
        hash(meta.comp_metadata.c3, HashAlgorithm.crc16, (bit<16>)0, { hdr.components[0].tlv_value, hdr.components[1].tlv_value, hdr.components[2].tlv_value }, (bit<32>)65536);
        hash(meta.comp_metadata.c4, HashAlgorithm.crc16, (bit<16>)0, { hdr.components[0].tlv_value, hdr.components[1].tlv_value, hdr.components[2].tlv_value, hdr.components[3].tlv_value }, (bit<32>)65536);
    }
    @name(".computeStoreTablesIndex") action computeStoreTablesIndex() {
        hash(meta.name_metadata.name_hash, HashAlgorithm.crc16, (bit<16>)0, { hdr.components[0].tlv_value, hdr.components[1].tlv_value, hdr.components[2].tlv_value, hdr.components[3].tlv_value, hdr.components[4].tlv_value }, (bit<32>)65536);
        computeNameHashes();
    }
    @name(".readPit") action readPit() {
        pit_r.read(meta.flow_metadata.isInPIT, (bit<16>)meta.name_metadata.name_hash);
    }
    @name(".readPitEntry") action readPitEntry() {
        readPit();
    }
    @name(".cleanPitEntry") action cleanPitEntry() {
        readPit();
        pit_r.write((bit<16>)16w0x0, (bit<8>)meta.name_metadata.name_hash);
    }
    @name(".setOutputIface") action setOutputIface(bit<9> out_iface) {
        standard_metadata.egress_spec = out_iface;
    }
    @name(".updatePit_entry") action updatePit_entry() {
        meta.pit_metadata.tmp = (bit<8>)((bit<9>)meta.flow_metadata.isInPIT & 9w1 << standard_metadata.ingress_port);
        meta.flow_metadata.isInPIT = (bit<8>)((bit<9>)meta.flow_metadata.isInPIT | 9w1 << standard_metadata.ingress_port);
        pit_r.write((bit<16>)meta.name_metadata.name_hash, (bit<8>)meta.flow_metadata.isInPIT);
    }
    @name(".count_table") table count_table {
        actions = {
            storeNumOfComponents;
            _drop;
        }
        key = {
            hdr.components[0].isValid(): exact;
            hdr.components[1].isValid(): exact;
            hdr.components[2].isValid(): exact;
            hdr.components[3].isValid(): exact;
            hdr.components[4].isValid(): exact;
        }
        size = 5;
    }
    @name(".fib_table") table fib_table {
        actions = {
            set_egr;
            _drop;
        }
        key = {
            meta.name_metadata.components: exact;
            meta.comp_metadata.c1        : ternary;
            meta.comp_metadata.c2        : ternary;
            meta.comp_metadata.c3        : ternary;
            meta.comp_metadata.c4        : ternary;
            meta.name_metadata.name_hash : ternary;
        }
    }
    @name(".hashName_table") table hashName_table {
        actions = {
            computeStoreTablesIndex;
        }
        size = 1;
    }
    @name(".pit_table") table pit_table {
        actions = {
            readPitEntry;
            cleanPitEntry;
        }
        key = {
            meta.flow_metadata.packetType: exact;
        }
        size = 2;
    }
    @name(".routeData_table") table routeData_table {
        actions = {
            setOutputIface;
            _drop;
        }
        key = {
            meta.flow_metadata.isInPIT: exact;
        }
        size = 20;
    }
    @name(".updatePit_table") table updatePit_table {
        actions = {
            updatePit_entry;
            _drop;
        }
        key = {
            meta.flow_metadata.hasFIBentry: exact;
        }
        size = 2;
    }
    apply {
        count_table.apply();
        if (meta.name_metadata.components != 8w0) {
            hashName_table.apply();
            pit_table.apply();
            if (meta.flow_metadata.packetType == 8w0x5) {
                if (meta.flow_metadata.isInPIT == 8w0) {
                    fib_table.apply();
                }
                updatePit_table.apply();
            } else {
                routeData_table.apply();
            }
        }
    }
}

control DeparserImpl(packet_out packet, in headers hdr) {
    apply {
        packet.emit(hdr.ethernet);
        packet.emit(hdr.small_ndnlp);
        packet.emit(hdr.medium_ndnlp);
        packet.emit(hdr.small_tlv0);
        packet.emit(hdr.huge_tlv0);
        packet.emit(hdr.big_tlv0);
        packet.emit(hdr.medium_tlv0);
        packet.emit(hdr.small_name);
        packet.emit(hdr.huge_name);
        packet.emit(hdr.big_name);
        packet.emit(hdr.medium_name);
        packet.emit(hdr.components);
        packet.emit(hdr.isha256);
        packet.emit(hdr.metainfo);
        packet.emit(hdr.small_content);
        packet.emit(hdr.huge_content);
        packet.emit(hdr.big_content);
        packet.emit(hdr.medium_content);
        packet.emit(hdr.signature_info);
        packet.emit(hdr.signature_value);
        packet.emit(hdr.nonce);
        packet.emit(hdr.lifetime);
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

