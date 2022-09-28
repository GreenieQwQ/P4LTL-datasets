type Ref;
type error=int;
type HeaderStack = [int]Ref;
var last:[HeaderStack]Ref;
var forward:bool;
var isValid:[Ref]bool;
var emit:[Ref]bool;
var stack.index:[HeaderStack]int;
var size:[HeaderStack]int;
var drop:bool;

// Struct standard_metadata_t
var standard_metadata.ingress_port:int;
var standard_metadata.egress_spec:int;
var standard_metadata.egress_port:int;
var standard_metadata.instance_type:int;
var standard_metadata.packet_length:int;
var standard_metadata.enq_timestamp:int;
var standard_metadata.enq_qdepth:int;
var standard_metadata.deq_timedelta:int;
var standard_metadata.deq_qdepth:int;
var standard_metadata.ingress_global_timestamp:int;
var standard_metadata.egress_global_timestamp:int;
var standard_metadata.mcast_grp:int;
var standard_metadata.egress_rid:int;
var standard_metadata.checksum_error:int;
var standard_metadata.parser_error:error;
var standard_metadata.priority:int;
type EthernetAddress = int;
type IPv4Address = int;

// Struct headers

// Header Ethernet_h
var hdr.ethernet:Ref;
var hdr.ethernet.valid:bool;
var hdr.ethernet.dstAddr:EthernetAddress;
var _old_hdr.ethernet.dstAddr:EthernetAddress;
var hdr.ethernet.srcAddr:EthernetAddress;
var _old_hdr.ethernet.srcAddr:EthernetAddress;
var hdr.ethernet.etherType:int;
var _old_hdr.ethernet.etherType:int;

// Header IPv4_h
var hdr.ipv4_icmp:Ref;
var hdr.ipv4_icmp.valid:bool;
var hdr.ipv4_icmp.version:int;
var _old_hdr.ipv4_icmp.version:int;
var hdr.ipv4_icmp.ihl:int;
var _old_hdr.ipv4_icmp.ihl:int;
var hdr.ipv4_icmp.dscp:int;
var _old_hdr.ipv4_icmp.dscp:int;
var hdr.ipv4_icmp.ecn:int;
var _old_hdr.ipv4_icmp.ecn:int;
var hdr.ipv4_icmp.totalLen:int;
var _old_hdr.ipv4_icmp.totalLen:int;
var hdr.ipv4_icmp.identification:int;
var _old_hdr.ipv4_icmp.identification:int;
var hdr.ipv4_icmp.flags:int;
var _old_hdr.ipv4_icmp.flags:int;
var hdr.ipv4_icmp.fragOffset:int;
var _old_hdr.ipv4_icmp.fragOffset:int;
var hdr.ipv4_icmp.ttl:int;
var _old_hdr.ipv4_icmp.ttl:int;
var hdr.ipv4_icmp.protocol:int;
var _old_hdr.ipv4_icmp.protocol:int;
var hdr.ipv4_icmp.hdrChecksum:int;
var _old_hdr.ipv4_icmp.hdrChecksum:int;
var hdr.ipv4_icmp.srcAddr:IPv4Address;
var _old_hdr.ipv4_icmp.srcAddr:IPv4Address;
var hdr.ipv4_icmp.dstAddr:IPv4Address;
var _old_hdr.ipv4_icmp.dstAddr:IPv4Address;

// Header ICMP_h
var hdr.icmp:Ref;
var hdr.icmp.valid:bool;
var hdr.icmp.type:int;
var _old_hdr.icmp.type:int;
var hdr.icmp.code:int;
var _old_hdr.icmp.code:int;
var hdr.icmp.checksum:int;
var _old_hdr.icmp.checksum:int;
var hdr.icmp.unused:int;
var _old_hdr.icmp.unused:int;

// Header IPv4_h
var hdr.ipv4:Ref;
var hdr.ipv4.valid:bool;
var hdr.ipv4.version:int;
var _old_hdr.ipv4.version:int;
var hdr.ipv4.ihl:int;
var _old_hdr.ipv4.ihl:int;
var hdr.ipv4.dscp:int;
var _old_hdr.ipv4.dscp:int;
var hdr.ipv4.ecn:int;
var _old_hdr.ipv4.ecn:int;
var hdr.ipv4.totalLen:int;
var _old_hdr.ipv4.totalLen:int;
var hdr.ipv4.identification:int;
var _old_hdr.ipv4.identification:int;
var hdr.ipv4.flags:int;
var _old_hdr.ipv4.flags:int;
var hdr.ipv4.fragOffset:int;
var _old_hdr.ipv4.fragOffset:int;
var hdr.ipv4.ttl:int;
var _old_hdr.ipv4.ttl:int;
var hdr.ipv4.protocol:int;
var _old_hdr.ipv4.protocol:int;
var hdr.ipv4.hdrChecksum:int;
var _old_hdr.ipv4.hdrChecksum:int;
var hdr.ipv4.srcAddr:IPv4Address;
var _old_hdr.ipv4.srcAddr:IPv4Address;
var hdr.ipv4.dstAddr:IPv4Address;
var _old_hdr.ipv4.dstAddr:IPv4Address;

// Header TCP_h
var hdr.tcp:Ref;
var hdr.tcp.valid:bool;
var hdr.tcp.srcPort:int;
var _old_hdr.tcp.srcPort:int;
var hdr.tcp.dstPort:int;
var _old_hdr.tcp.dstPort:int;
var hdr.tcp.seqNo:int;
var _old_hdr.tcp.seqNo:int;
var hdr.tcp.ackNo:int;
var _old_hdr.tcp.ackNo:int;
var hdr.tcp.dataOffset:int;
var _old_hdr.tcp.dataOffset:int;
var hdr.tcp.res:int;
var _old_hdr.tcp.res:int;
var hdr.tcp.cwr:int;
var _old_hdr.tcp.cwr:int;
var hdr.tcp.ece:int;
var _old_hdr.tcp.ece:int;
var hdr.tcp.urg:int;
var _old_hdr.tcp.urg:int;
var hdr.tcp.ack:int;
var _old_hdr.tcp.ack:int;
var hdr.tcp.psh:int;
var _old_hdr.tcp.psh:int;
var hdr.tcp.rst:int;
var _old_hdr.tcp.rst:int;
var hdr.tcp.syn:int;
var _old_hdr.tcp.syn:int;
var hdr.tcp.fin:int;
var _old_hdr.tcp.fin:int;
var hdr.tcp.window:int;
var _old_hdr.tcp.window:int;
var hdr.tcp.checksum:int;
var _old_hdr.tcp.checksum:int;
var hdr.tcp.urgentPtr:int;
var _old_hdr.tcp.urgentPtr:int;

// Struct controller_metadata_t

// Struct metadata
var meta.id:int;
var meta.use_blink:int;
var meta.is_retransmission:int;
var meta.next_hop_port:int;
var meta.nhop_ipv4:IPv4Address;
var meta.tcp_payload_len:int;
var meta.ingress_timestamp_second:int;
var meta.ingress_timestamp_millisecond:int;
var meta.flowselector_cellid:int;
var meta.selected:int;
var meta.bgp_ngh_type:int;
var ts_tmp_0:int;
var sum_tmp_0:int;
var threshold_tmp_0:int;
var correctness_tmp_0:int;
var rerouting_ts_tmp_0:int;
var flowselector_fwloops_tmp_0:int;
var nh_avaibility_1_tmp_0:int;
var nh_avaibility_2_tmp_0:int;
var nh_avaibility_3_tmp_0:int;
var tmp_mac_0:int;

// Register flowselector_key_0
var flowselector_key_0:[int]int;
const flowselector_key_0.size:int;
axiom flowselector_key_0.size == 6400;

// Register flowselector_nep_0
var flowselector_nep_0:[int]int;
const flowselector_nep_0.size:int;
axiom flowselector_nep_0.size == 6400;

// Register flowselector_ts_0
var flowselector_ts_0:[int]int;
const flowselector_ts_0.size:int;
axiom flowselector_ts_0.size == 6400;

// Register flowselector_last_ret_0
var flowselector_last_ret_0:[int]int;
const flowselector_last_ret_0.size:int;
axiom flowselector_last_ret_0.size == 6400;

// Register flowselector_last_ret_bin_0
var flowselector_last_ret_bin_0:[int]int;
const flowselector_last_ret_bin_0.size:int;
axiom flowselector_last_ret_bin_0.size == 6400;

// Register flowselector_correctness_0
var flowselector_correctness_0:[int]int;
const flowselector_correctness_0.size:int;
axiom flowselector_correctness_0.size == 6400;

// Register flowselector_fwloops_0
var flowselector_fwloops_0:[int]int;
const flowselector_fwloops_0.size:int;
axiom flowselector_fwloops_0.size == 6400;

// Register sw_0
var sw_0:[int]int;
const sw_0.size:int;
axiom sw_0.size == 1000;

// Register sw_time_0
var sw_time_0:[int]int;
const sw_time_0.size:int;
axiom sw_time_0.size == 100;

// Register sw_index_0
var sw_index_0:[int]int;
const sw_index_0.size:int;
axiom sw_index_0.size == 100;

// Register sw_sum_0
var sw_sum_0:[int]int;
const sw_sum_0.size:int;
axiom sw_sum_0.size == 100;

// Register threshold_registers_0
var threshold_registers_0:[int]int;
const threshold_registers_0.size:int;
axiom threshold_registers_0.size == 100;

// Register next_hops_port_0
var next_hops_port_0:[int]int;
const next_hops_port_0.size:int;
axiom next_hops_port_0.size == 300;

// Register nh_avaibility_1
var nh_avaibility_1:[int]int;
const nh_avaibility_1.size:int;
axiom nh_avaibility_1.size == 100;

// Register nh_avaibility_2
var nh_avaibility_2:[int]int;
const nh_avaibility_2.size:int;
axiom nh_avaibility_2.size == 100;

// Register nh_avaibility_3
var nh_avaibility_3:[int]int;
const nh_avaibility_3.size:int;
axiom nh_avaibility_3.size == 100;

// Register nbflows_progressing_2
var nbflows_progressing_2:[int]int;
const nbflows_progressing_2.size:int;
axiom nbflows_progressing_2.size == 100;

// Register nbflows_progressing_3
var nbflows_progressing_3:[int]int;
const nbflows_progressing_3.size:int;
axiom nbflows_progressing_3.size == 100;

// Register rerouting_ts_0
var rerouting_ts_0:[int]int;
const rerouting_ts_0.size:int;
axiom rerouting_ts_0.size == 100;

// Register timestamp_reference_0
var timestamp_reference_0:[int]int;
const timestamp_reference_0.size:int;
axiom timestamp_reference_0.size == 1;

// Register switch_ip_0
var switch_ip_0:[int]int;
const switch_ip_0.size:int;
axiom switch_ip_0.size == 1;
var fc_newflow_key:int;
var fc_cell_id:int;
var fc_curflow_key:int;
var fc_curflow_ts:int;
var fc_curflow_nep:int;
var fc_index_tmp:int;
var fc_bin_value_tmp:int;
var fc_sum_tmp:int;
var fc_time_tmp:int;
var fc_flowselector_index:int;
var fc_last_ret_ts:int;
var fc_index_prev:int;
var fc_rerouting_ts_tmp:int;
var fc_flowselector_correctness_tmp:int;
var fc_correctness_tmp:int;
var fc_last_sw_time:int;
var fc_cur_sw_index:int;
var fc_cur_sw_sum:int;
var fc_cur_sw_val:int;
var fc_shift:int;

// Table meta_fwtable_0 Actionlist Declaration
type meta_fwtable_0.action;
const unique meta_fwtable_0.action.set_meta : meta_fwtable_0.action;
var meta_fwtable_0.action_run : meta_fwtable_0.action;
var meta_fwtable_0.hit : bool;

// Table bgp_tag_0 Actionlist Declaration
type bgp_tag_0.action;
const unique bgp_tag_0.action.set_bgp_tag : bgp_tag_0.action;
var bgp_tag_0.action_run : bgp_tag_0.action;
var bgp_tag_0.hit : bool;
function {:inline true} add.bv8(left:int, right:int) : int{((left%power_2_8())+(right%power_2_8()))%power_2_8()}

// Table send_0 Actionlist Declaration
type send_0.action;
const unique send_0.action.set_nh : send_0.action;
var send_0.action_run : send_0.action;
var send_0.hit : bool;
function {:inline true} bugt.bv48(left:int, right:int) : bool{left > right}
function {:inline true} sub.bv48(left:int, right:int) : int{(power_2_48() + (left%power_2_48()) - (right%power_2_48()))%power_2_48()}
function {:inline true} shr.bv48_20(num:int) : int {(num-num%power_2_20())/power_2_20()}
function {:inline true} shr.bv48_10(num:int) : int {(num-num%power_2_10())/power_2_10()}
function {:inline true} sub.bv16(left:int, right:int) : int{(power_2_16() + (left%power_2_16()) - (right%power_2_16()))%power_2_16()}
function {:inline true} shl.bv16_2(num:int) : int {(num*power_2_2())%power_2_2()}
function {:inline true} bugt.bv16(left:int, right:int) : bool{left > right}
function {:inline true} bugt.bv19(left:int, right:int) : bool{left > right}
function {:inline true} sub.bv19(left:int, right:int) : int{(power_2_19() + (left%power_2_19()) - (right%power_2_19()))%power_2_19()}
function {:inline true} mul.bv32(left:int, right:int) : int{((left%power_2_32())*(right%power_2_32()))%power_2_32()}
function {:inline true} add.bv32(left:int, right:int) : int{((left%power_2_32())+(right%power_2_32()))%power_2_32()}
function {:inline true} bult.bv19(left:int, right:int) : bool{left < right}
function {:inline true} add.bv19(left:int, right:int) : int{((left%power_2_19())+(right%power_2_19()))%power_2_19()}
function {:inline true} add.bv4(left:int, right:int) : int{((left%power_2_4())+(right%power_2_4()))%power_2_4()}
function {:inline true} bsge.bv4(left:int, right:int) : bool{left >= right}
function {:inline true} sub.bv6(left:int, right:int) : int{(power_2_6() + (left%power_2_6()) - (right%power_2_6()))%power_2_6()}
function {:inline true} add.bv48(left:int, right:int) : int{((left%power_2_48())+(right%power_2_48()))%power_2_48()}
function {:inline true} bsge.(left:int, right:int) : bool{left >= right}
function {:inline true} shl.bv32_6(num:int) : int {(num*power_2_6())%power_2_6()}
function {:inline true} bsge.bv9(left:int, right:int) : bool{left >= right}
function {:inline true} bult.bv48(left:int, right:int) : bool{left < right}
function {:inline true} add.bv6(left:int, right:int) : int{((left%power_2_6())+(right%power_2_6()))%power_2_6()}
function {:inline true} bult.bv32(left:int, right:int) : bool{left < right}
function {:inline true} bugt.bv9(left:int, right:int) : bool{left > right}
function {:inline true} sub.bv9(left:int, right:int) : int{(power_2_9() + (left%power_2_9()) - (right%power_2_9()))%power_2_9()}
function {:inline true} bult.bv9(left:int, right:int) : bool{left < right}
function {:inline true} bugt.bv32(left:int, right:int) : bool{left > right}
function {:inline true} bugt.bv6(left:int, right:int) : bool{left > right}
function {:inline true} add.bv2(left:int, right:int) : int{((left%power_2_2())+(right%power_2_2()))%power_2_2()}
function {:inline true} bult.bv6(left:int, right:int) : bool{left < right}
function {:inline true} shr.bv6_1(num:int) : int {(num-num%power_2_1())/power_2_1()}
function {:inline true} power_2_0() : int{1}
function {:inline true} power_2_1() : int{2}
function {:inline true} power_2_2() : int{4}
function {:inline true} power_2_3() : int{8}
function {:inline true} power_2_4() : int{16}
function {:inline true} power_2_5() : int{32}
function {:inline true} power_2_6() : int{64}
function {:inline true} power_2_7() : int{128}
function {:inline true} power_2_8() : int{256}
function {:inline true} power_2_9() : int{512}
function {:inline true} power_2_10() : int{1024}
function {:inline true} power_2_11() : int{2048}
function {:inline true} power_2_12() : int{4096}
function {:inline true} power_2_13() : int{8192}
function {:inline true} power_2_14() : int{16384}
function {:inline true} power_2_15() : int{32768}
function {:inline true} power_2_16() : int{65536}
function {:inline true} power_2_17() : int{131072}
function {:inline true} power_2_18() : int{262144}
function {:inline true} power_2_19() : int{524288}
function {:inline true} power_2_20() : int{1048576}
function {:inline true} power_2_21() : int{2097152}
function {:inline true} power_2_22() : int{4194304}
function {:inline true} power_2_23() : int{8388608}
function {:inline true} power_2_24() : int{16777216}
function {:inline true} power_2_25() : int{33554432}
function {:inline true} power_2_26() : int{67108864}
function {:inline true} power_2_27() : int{134217728}
function {:inline true} power_2_28() : int{268435456}
function {:inline true} power_2_29() : int{536870912}
function {:inline true} power_2_30() : int{1073741824}
function {:inline true} power_2_31() : int{2147483648}
function {:inline true} power_2_32() : int{4294967296}
function {:inline true} power_2_33() : int{8589934592}
function {:inline true} power_2_34() : int{17179869184}
function {:inline true} power_2_35() : int{34359738368}
function {:inline true} power_2_36() : int{68719476736}
function {:inline true} power_2_37() : int{137438953472}
function {:inline true} power_2_38() : int{274877906944}
function {:inline true} power_2_39() : int{549755813888}
function {:inline true} power_2_40() : int{1099511627776}
function {:inline true} power_2_41() : int{2199023255552}
function {:inline true} power_2_42() : int{4398046511104}
function {:inline true} power_2_43() : int{8796093022208}
function {:inline true} power_2_44() : int{17592186044416}
function {:inline true} power_2_45() : int{35184372088832}
function {:inline true} power_2_46() : int{70368744177664}
function {:inline true} power_2_47() : int{140737488355328}
function {:inline true} power_2_48() : int{281474976710656}
function {:inline true} power_2_49() : int{562949953421312}
function {:inline true} power_2_50() : int{1125899906842624}
function {:inline true} band(left:int, right:int) : int{((left+right)-(left+right)%2)/2}
function {:inline true} bxor(left:int, right:int) : int{(left+right)%2}
function {:inline true} bor(left:int, right:int) : int{(left+right)%2+((left+right)-((left+right)%2))/2}
function {:inline true} bnot(num:int) : int{1-num%2}

// Action NoAction_0
procedure {:inline 1} NoAction_0()
{
}
procedure ULTIMATE.start()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.checksum, _old_hdr.icmp.code, _old_hdr.icmp.type, _old_hdr.icmp.unused, _old_hdr.ipv4.dscp, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.ecn, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.ipv4_icmp.dscp, _old_hdr.ipv4_icmp.dstAddr, _old_hdr.ipv4_icmp.ecn, _old_hdr.ipv4_icmp.flags, _old_hdr.ipv4_icmp.fragOffset, _old_hdr.ipv4_icmp.hdrChecksum, _old_hdr.ipv4_icmp.identification, _old_hdr.ipv4_icmp.ihl, _old_hdr.ipv4_icmp.protocol, _old_hdr.ipv4_icmp.srcAddr, _old_hdr.ipv4_icmp.totalLen, _old_hdr.ipv4_icmp.ttl, _old_hdr.ipv4_icmp.version, _old_hdr.tcp.ack, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.cwr, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.ece, _old_hdr.tcp.fin, _old_hdr.tcp.psh, _old_hdr.tcp.res, _old_hdr.tcp.rst, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.syn, _old_hdr.tcp.urg, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, bgp_tag_0.action_run, correctness_tmp_0, drop, emit, fc_bin_value_tmp, fc_cell_id, fc_correctness_tmp, fc_cur_sw_index, fc_cur_sw_sum, fc_cur_sw_val, fc_curflow_key, fc_curflow_nep, fc_curflow_ts, fc_flowselector_correctness_tmp, fc_flowselector_index, fc_index_prev, fc_index_tmp, fc_last_ret_ts, fc_last_sw_time, fc_newflow_key, fc_rerouting_ts_tmp, fc_shift, fc_sum_tmp, fc_time_tmp, flowselector_correctness_0, flowselector_fwloops_0, flowselector_fwloops_tmp_0, flowselector_key_0, flowselector_last_ret_0, flowselector_last_ret_bin_0, flowselector_nep_0, flowselector_ts_0, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.checksum, hdr.icmp.code, hdr.icmp.type, hdr.icmp.unused, hdr.icmp.valid, hdr.ipv4.dscp, hdr.ipv4.dstAddr, hdr.ipv4.ecn, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_icmp, hdr.ipv4_icmp.dscp, hdr.ipv4_icmp.dstAddr, hdr.ipv4_icmp.ecn, hdr.ipv4_icmp.flags, hdr.ipv4_icmp.fragOffset, hdr.ipv4_icmp.hdrChecksum, hdr.ipv4_icmp.identification, hdr.ipv4_icmp.ihl, hdr.ipv4_icmp.protocol, hdr.ipv4_icmp.srcAddr, hdr.ipv4_icmp.totalLen, hdr.ipv4_icmp.ttl, hdr.ipv4_icmp.valid, hdr.ipv4_icmp.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, isValid, meta.bgp_ngh_type, meta.flowselector_cellid, meta.id, meta.ingress_timestamp_millisecond, meta.ingress_timestamp_second, meta.is_retransmission, meta.next_hop_port, meta.selected, meta.tcp_payload_len, meta.use_blink, meta_fwtable_0.action_run, nbflows_progressing_2, nbflows_progressing_3, nh_avaibility_1, nh_avaibility_1_tmp_0, nh_avaibility_2, nh_avaibility_2_tmp_0, nh_avaibility_3, nh_avaibility_3_tmp_0, rerouting_ts_0, rerouting_ts_tmp_0, send_0.action_run, standard_metadata.egress_spec, standard_metadata.ingress_port, sum_tmp_0, sw_0, sw_index_0, sw_sum_0, sw_time_0, threshold_tmp_0, timestamp_reference_0, tmp_mac_0, ts_tmp_0;
{
    call mainProcedure();
}

// Action _drop
procedure {:inline 1} _drop()
	modifies drop;
{
    call mark_to_drop();
}

// Action _drop_2
procedure {:inline 1} _drop_2()
	modifies drop;
{
    call mark_to_drop();
}

// Parser _parser_ParserImpl
procedure {:inline 1} _parser_ParserImpl()
	modifies drop, hdr.ethernet.valid, hdr.ipv4.valid, hdr.tcp.valid;
{
    call start();
}
procedure {:inline 1} accept()
{
}

procedure bgp_tag_0.action_run.limit();
    ensures(bgp_tag_0.action_run==bgp_tag_0.action.set_bgp_tag);
	modifies bgp_tag_0.action_run;

// Table bgp_tag_0
procedure {:inline 1} bgp_tag_0.apply()
	modifies hdr.ethernet.srcAddr, meta.bgp_ngh_type, standard_metadata.ingress_port;
{
    var set_bgp_tag.neighbor_bgp_type:int;
    standard_metadata.ingress_port := standard_metadata.ingress_port;
    hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;

    call bgp_tag_0.apply_table_entry();

    action_set_bgp_tag:
    if(bgp_tag_0.action_run == bgp_tag_0.action.set_bgp_tag){
        call set_bgp_tag(set_bgp_tag.neighbor_bgp_type);
    }
}

// Table Entry bgp_tag_0.apply_table_entry
procedure bgp_tag_0.apply_table_entry();

// Table Exit bgp_tag_0.apply_table_exit
procedure bgp_tag_0.apply_table_exit();
procedure clear_drop();
    ensures drop==false;
	modifies drop;
procedure clear_forward();
    ensures forward==false;
	modifies forward;

// Control computeChecksum
procedure {:inline 1} computeChecksum()
{
    // update_checksum
    // update_checksum
    // update_checksum
}

// Control egress
procedure {:inline 1} egress()
{
}
function flowselector_correctness_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_correctness_0.write(index:int, value:int)
	modifies flowselector_correctness_0;
{
    flowselector_correctness_0[index] := value;
}
function flowselector_fwloops_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_fwloops_0.write(index:int, value:int)
	modifies flowselector_fwloops_0;
{
    flowselector_fwloops_0[index] := value;
}
function flowselector_key_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_key_0.write(index:int, value:int)
	modifies flowselector_key_0;
{
    flowselector_key_0[index] := value;
}
function flowselector_last_ret_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_last_ret_0.write(index:int, value:int)
	modifies flowselector_last_ret_0;
{
    flowselector_last_ret_0[index] := value;
}
function flowselector_last_ret_bin_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_last_ret_bin_0.write(index:int, value:int)
	modifies flowselector_last_ret_bin_0;
{
    flowselector_last_ret_bin_0[index] := value;
}
function flowselector_nep_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_nep_0.write(index:int, value:int)
	modifies flowselector_nep_0;
{
    flowselector_nep_0[index] := value;
}
function flowselector_ts_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} flowselector_ts_0.write(index:int, value:int)
	modifies flowselector_ts_0;
{
    flowselector_ts_0[index] := value;
}
procedure {:inline 1} havocProcedure()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.checksum, _old_hdr.icmp.code, _old_hdr.icmp.type, _old_hdr.icmp.unused, _old_hdr.ipv4.dscp, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.ecn, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.ipv4_icmp.dscp, _old_hdr.ipv4_icmp.dstAddr, _old_hdr.ipv4_icmp.ecn, _old_hdr.ipv4_icmp.flags, _old_hdr.ipv4_icmp.fragOffset, _old_hdr.ipv4_icmp.hdrChecksum, _old_hdr.ipv4_icmp.identification, _old_hdr.ipv4_icmp.ihl, _old_hdr.ipv4_icmp.protocol, _old_hdr.ipv4_icmp.srcAddr, _old_hdr.ipv4_icmp.totalLen, _old_hdr.ipv4_icmp.ttl, _old_hdr.ipv4_icmp.version, _old_hdr.tcp.ack, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.cwr, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.ece, _old_hdr.tcp.fin, _old_hdr.tcp.psh, _old_hdr.tcp.res, _old_hdr.tcp.rst, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.syn, _old_hdr.tcp.urg, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.checksum, hdr.icmp.code, hdr.icmp.type, hdr.icmp.unused, hdr.icmp.valid, hdr.ipv4.dscp, hdr.ipv4.dstAddr, hdr.ipv4.ecn, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_icmp.dscp, hdr.ipv4_icmp.dstAddr, hdr.ipv4_icmp.ecn, hdr.ipv4_icmp.flags, hdr.ipv4_icmp.fragOffset, hdr.ipv4_icmp.hdrChecksum, hdr.ipv4_icmp.identification, hdr.ipv4_icmp.ihl, hdr.ipv4_icmp.protocol, hdr.ipv4_icmp.srcAddr, hdr.ipv4_icmp.totalLen, hdr.ipv4_icmp.ttl, hdr.ipv4_icmp.valid, hdr.ipv4_icmp.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window;
{
    hdr.ethernet.valid := false;
    emit[hdr.ethernet] := false;
    havoc hdr.ethernet.dstAddr;
    _old_hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;
    havoc hdr.ethernet.srcAddr;
    _old_hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;
    havoc hdr.ethernet.etherType;
    assume(0 <= hdr.ethernet.etherType && hdr.ethernet.etherType <= power_2_16() );
    _old_hdr.ethernet.etherType := hdr.ethernet.etherType;
    hdr.ipv4_icmp.valid := false;
    emit[hdr.ipv4_icmp] := false;
    havoc hdr.ipv4_icmp.version;
    assume(0 <= hdr.ipv4_icmp.version && hdr.ipv4_icmp.version <= power_2_4() );
    _old_hdr.ipv4_icmp.version := hdr.ipv4_icmp.version;
    havoc hdr.ipv4_icmp.ihl;
    assume(0 <= hdr.ipv4_icmp.ihl && hdr.ipv4_icmp.ihl <= power_2_4() );
    _old_hdr.ipv4_icmp.ihl := hdr.ipv4_icmp.ihl;
    havoc hdr.ipv4_icmp.dscp;
    assume(0 <= hdr.ipv4_icmp.dscp && hdr.ipv4_icmp.dscp <= power_2_6() );
    _old_hdr.ipv4_icmp.dscp := hdr.ipv4_icmp.dscp;
    havoc hdr.ipv4_icmp.ecn;
    assume(0 <= hdr.ipv4_icmp.ecn && hdr.ipv4_icmp.ecn <= power_2_2() );
    _old_hdr.ipv4_icmp.ecn := hdr.ipv4_icmp.ecn;
    havoc hdr.ipv4_icmp.totalLen;
    assume(0 <= hdr.ipv4_icmp.totalLen && hdr.ipv4_icmp.totalLen <= power_2_16() );
    _old_hdr.ipv4_icmp.totalLen := hdr.ipv4_icmp.totalLen;
    havoc hdr.ipv4_icmp.identification;
    assume(0 <= hdr.ipv4_icmp.identification && hdr.ipv4_icmp.identification <= power_2_16() );
    _old_hdr.ipv4_icmp.identification := hdr.ipv4_icmp.identification;
    havoc hdr.ipv4_icmp.flags;
    assume(0 <= hdr.ipv4_icmp.flags && hdr.ipv4_icmp.flags <= power_2_3() );
    _old_hdr.ipv4_icmp.flags := hdr.ipv4_icmp.flags;
    havoc hdr.ipv4_icmp.fragOffset;
    assume(0 <= hdr.ipv4_icmp.fragOffset && hdr.ipv4_icmp.fragOffset <= power_2_13() );
    _old_hdr.ipv4_icmp.fragOffset := hdr.ipv4_icmp.fragOffset;
    havoc hdr.ipv4_icmp.ttl;
    assume(0 <= hdr.ipv4_icmp.ttl && hdr.ipv4_icmp.ttl <= power_2_8() );
    _old_hdr.ipv4_icmp.ttl := hdr.ipv4_icmp.ttl;
    havoc hdr.ipv4_icmp.protocol;
    assume(0 <= hdr.ipv4_icmp.protocol && hdr.ipv4_icmp.protocol <= power_2_8() );
    _old_hdr.ipv4_icmp.protocol := hdr.ipv4_icmp.protocol;
    havoc hdr.ipv4_icmp.hdrChecksum;
    assume(0 <= hdr.ipv4_icmp.hdrChecksum && hdr.ipv4_icmp.hdrChecksum <= power_2_16() );
    _old_hdr.ipv4_icmp.hdrChecksum := hdr.ipv4_icmp.hdrChecksum;
    havoc hdr.ipv4_icmp.srcAddr;
    _old_hdr.ipv4_icmp.srcAddr := hdr.ipv4_icmp.srcAddr;
    havoc hdr.ipv4_icmp.dstAddr;
    _old_hdr.ipv4_icmp.dstAddr := hdr.ipv4_icmp.dstAddr;
    hdr.icmp.valid := false;
    emit[hdr.icmp] := false;
    havoc hdr.icmp.type;
    assume(0 <= hdr.icmp.type && hdr.icmp.type <= power_2_8() );
    _old_hdr.icmp.type := hdr.icmp.type;
    havoc hdr.icmp.code;
    assume(0 <= hdr.icmp.code && hdr.icmp.code <= power_2_8() );
    _old_hdr.icmp.code := hdr.icmp.code;
    havoc hdr.icmp.checksum;
    assume(0 <= hdr.icmp.checksum && hdr.icmp.checksum <= power_2_16() );
    _old_hdr.icmp.checksum := hdr.icmp.checksum;
    havoc hdr.icmp.unused;
    assume(0 <= hdr.icmp.unused && hdr.icmp.unused <= power_2_32() );
    _old_hdr.icmp.unused := hdr.icmp.unused;
    hdr.ipv4.valid := false;
    emit[hdr.ipv4] := false;
    havoc hdr.ipv4.version;
    assume(0 <= hdr.ipv4.version && hdr.ipv4.version <= power_2_4() );
    _old_hdr.ipv4.version := hdr.ipv4.version;
    havoc hdr.ipv4.ihl;
    assume(0 <= hdr.ipv4.ihl && hdr.ipv4.ihl <= power_2_4() );
    _old_hdr.ipv4.ihl := hdr.ipv4.ihl;
    havoc hdr.ipv4.dscp;
    assume(0 <= hdr.ipv4.dscp && hdr.ipv4.dscp <= power_2_6() );
    _old_hdr.ipv4.dscp := hdr.ipv4.dscp;
    havoc hdr.ipv4.ecn;
    assume(0 <= hdr.ipv4.ecn && hdr.ipv4.ecn <= power_2_2() );
    _old_hdr.ipv4.ecn := hdr.ipv4.ecn;
    havoc hdr.ipv4.totalLen;
    assume(0 <= hdr.ipv4.totalLen && hdr.ipv4.totalLen <= power_2_16() );
    _old_hdr.ipv4.totalLen := hdr.ipv4.totalLen;
    havoc hdr.ipv4.identification;
    assume(0 <= hdr.ipv4.identification && hdr.ipv4.identification <= power_2_16() );
    _old_hdr.ipv4.identification := hdr.ipv4.identification;
    havoc hdr.ipv4.flags;
    assume(0 <= hdr.ipv4.flags && hdr.ipv4.flags <= power_2_3() );
    _old_hdr.ipv4.flags := hdr.ipv4.flags;
    havoc hdr.ipv4.fragOffset;
    assume(0 <= hdr.ipv4.fragOffset && hdr.ipv4.fragOffset <= power_2_13() );
    _old_hdr.ipv4.fragOffset := hdr.ipv4.fragOffset;
    havoc hdr.ipv4.ttl;
    assume(0 <= hdr.ipv4.ttl && hdr.ipv4.ttl <= power_2_8() );
    _old_hdr.ipv4.ttl := hdr.ipv4.ttl;
    havoc hdr.ipv4.protocol;
    assume(0 <= hdr.ipv4.protocol && hdr.ipv4.protocol <= power_2_8() );
    _old_hdr.ipv4.protocol := hdr.ipv4.protocol;
    havoc hdr.ipv4.hdrChecksum;
    assume(0 <= hdr.ipv4.hdrChecksum && hdr.ipv4.hdrChecksum <= power_2_16() );
    _old_hdr.ipv4.hdrChecksum := hdr.ipv4.hdrChecksum;
    havoc hdr.ipv4.srcAddr;
    _old_hdr.ipv4.srcAddr := hdr.ipv4.srcAddr;
    havoc hdr.ipv4.dstAddr;
    _old_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    hdr.tcp.valid := false;
    emit[hdr.tcp] := false;
    havoc hdr.tcp.srcPort;
    assume(0 <= hdr.tcp.srcPort && hdr.tcp.srcPort <= power_2_16() );
    _old_hdr.tcp.srcPort := hdr.tcp.srcPort;
    havoc hdr.tcp.dstPort;
    assume(0 <= hdr.tcp.dstPort && hdr.tcp.dstPort <= power_2_16() );
    _old_hdr.tcp.dstPort := hdr.tcp.dstPort;
    havoc hdr.tcp.seqNo;
    assume(0 <= hdr.tcp.seqNo && hdr.tcp.seqNo <= power_2_32() );
    _old_hdr.tcp.seqNo := hdr.tcp.seqNo;
    havoc hdr.tcp.ackNo;
    assume(0 <= hdr.tcp.ackNo && hdr.tcp.ackNo <= power_2_32() );
    _old_hdr.tcp.ackNo := hdr.tcp.ackNo;
    havoc hdr.tcp.dataOffset;
    assume(0 <= hdr.tcp.dataOffset && hdr.tcp.dataOffset <= power_2_4() );
    _old_hdr.tcp.dataOffset := hdr.tcp.dataOffset;
    havoc hdr.tcp.res;
    assume(0 <= hdr.tcp.res && hdr.tcp.res <= power_2_4() );
    _old_hdr.tcp.res := hdr.tcp.res;
    havoc hdr.tcp.cwr;
    assume(0 <= hdr.tcp.cwr && hdr.tcp.cwr <= power_2_1() );
    _old_hdr.tcp.cwr := hdr.tcp.cwr;
    havoc hdr.tcp.ece;
    assume(0 <= hdr.tcp.ece && hdr.tcp.ece <= power_2_1() );
    _old_hdr.tcp.ece := hdr.tcp.ece;
    havoc hdr.tcp.urg;
    assume(0 <= hdr.tcp.urg && hdr.tcp.urg <= power_2_1() );
    _old_hdr.tcp.urg := hdr.tcp.urg;
    havoc hdr.tcp.ack;
    assume(0 <= hdr.tcp.ack && hdr.tcp.ack <= power_2_1() );
    _old_hdr.tcp.ack := hdr.tcp.ack;
    havoc hdr.tcp.psh;
    assume(0 <= hdr.tcp.psh && hdr.tcp.psh <= power_2_1() );
    _old_hdr.tcp.psh := hdr.tcp.psh;
    havoc hdr.tcp.rst;
    assume(0 <= hdr.tcp.rst && hdr.tcp.rst <= power_2_1() );
    _old_hdr.tcp.rst := hdr.tcp.rst;
    havoc hdr.tcp.syn;
    assume(0 <= hdr.tcp.syn && hdr.tcp.syn <= power_2_1() );
    _old_hdr.tcp.syn := hdr.tcp.syn;
    havoc hdr.tcp.fin;
    assume(0 <= hdr.tcp.fin && hdr.tcp.fin <= power_2_1() );
    _old_hdr.tcp.fin := hdr.tcp.fin;
    havoc hdr.tcp.window;
    assume(0 <= hdr.tcp.window && hdr.tcp.window <= power_2_16() );
    _old_hdr.tcp.window := hdr.tcp.window;
    havoc hdr.tcp.checksum;
    assume(0 <= hdr.tcp.checksum && hdr.tcp.checksum <= power_2_16() );
    _old_hdr.tcp.checksum := hdr.tcp.checksum;
    havoc hdr.tcp.urgentPtr;
    assume(0 <= hdr.tcp.urgentPtr && hdr.tcp.urgentPtr <= power_2_16() );
    _old_hdr.tcp.urgentPtr := hdr.tcp.urgentPtr;
}

// Control ingress
procedure {:inline 1} ingress()
	modifies correctness_tmp_0, fc_bin_value_tmp, fc_cell_id, fc_correctness_tmp, fc_cur_sw_index, fc_cur_sw_sum, fc_cur_sw_val, fc_curflow_key, fc_curflow_nep, fc_curflow_ts, fc_flowselector_correctness_tmp, fc_flowselector_index, fc_index_prev, fc_index_tmp, fc_last_ret_ts, fc_last_sw_time, fc_newflow_key, fc_rerouting_ts_tmp, fc_shift, fc_sum_tmp, fc_time_tmp, flowselector_correctness_0, flowselector_fwloops_0, flowselector_fwloops_tmp_0, flowselector_key_0, flowselector_last_ret_0, flowselector_last_ret_bin_0, flowselector_nep_0, flowselector_ts_0, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.icmp.code, hdr.icmp.type, hdr.ipv4.dstAddr, hdr.ipv4.ttl, hdr.ipv4_icmp, hdr.ipv4_icmp.dstAddr, hdr.ipv4_icmp.protocol, hdr.ipv4_icmp.srcAddr, hdr.ipv4_icmp.totalLen, hdr.ipv4_icmp.ttl, isValid, meta.bgp_ngh_type, meta.flowselector_cellid, meta.id, meta.ingress_timestamp_millisecond, meta.ingress_timestamp_second, meta.is_retransmission, meta.next_hop_port, meta.selected, meta.tcp_payload_len, meta.use_blink, nbflows_progressing_2, nbflows_progressing_3, nh_avaibility_1, nh_avaibility_1_tmp_0, nh_avaibility_2, nh_avaibility_2_tmp_0, nh_avaibility_3, nh_avaibility_3_tmp_0, rerouting_ts_0, rerouting_ts_tmp_0, standard_metadata.egress_spec, standard_metadata.ingress_port, sum_tmp_0, sw_0, sw_index_0, sw_sum_0, sw_time_0, threshold_tmp_0, timestamp_reference_0, tmp_mac_0, ts_tmp_0;
{
    // read
    ts_tmp_0 := timestamp_reference_0.read(timestamp_reference_0, 0);
    if(bugt.bv48(sub.bv48(standard_metadata.ingress_global_timestamp, ts_tmp_0), 500000000)){
        // write
        call timestamp_reference_0.write(0, standard_metadata.ingress_global_timestamp);
    }
    // read
    ts_tmp_0 := timestamp_reference_0.read(timestamp_reference_0, 0);
    meta.ingress_timestamp_second := (shr.bv48_20(sub.bv48(standard_metadata.ingress_global_timestamp, ts_tmp_0))%power_2_9());
    meta.ingress_timestamp_millisecond := (shr.bv48_10(sub.bv48(standard_metadata.ingress_global_timestamp, ts_tmp_0))%power_2_19());
    call bgp_tag_0.apply();
    call meta_fwtable_0.apply();
    if(((hdr.ipv4.valid) && (hdr.tcp.valid)) && ((hdr.ipv4.ttl == 1))){
        call setValid(hdr.ipv4_icmp);
        call setValid(hdr.icmp);
        standard_metadata.egress_spec := standard_metadata.ingress_port;
        forward := true;
        tmp_mac_0 := hdr.ethernet.srcAddr;
        hdr.ethernet.srcAddr := hdr.ethernet.dstAddr;
        hdr.ethernet.dstAddr := tmp_mac_0;
        hdr.ipv4_icmp := hdr.ipv4;
        hdr.ipv4_icmp.dstAddr := hdr.ipv4.srcAddr;
        // read
        hdr.ipv4_icmp.srcAddr := switch_ip_0.read(switch_ip_0, 0);
        hdr.ipv4_icmp.protocol := 1;
        hdr.ipv4_icmp.ttl := 64;
        hdr.ipv4_icmp.totalLen := 56;
        hdr.icmp.type := 11;
        hdr.icmp.code := 0;
        // truncate
    }
    else{
        // read
        threshold_tmp_0 := threshold_registers_0.read(threshold_registers_0, meta.id);
        if((hdr.tcp.valid) && ((meta.use_blink == 1))){
            if(((hdr.tcp.syn == 1)) || ((hdr.tcp.fin == 1))){
                meta.tcp_payload_len := 1;
            }
            else{
                meta.tcp_payload_len := sub.bv16(sub.bv16(hdr.ipv4.totalLen, shl.bv16_2(hdr.ipv4.ihl)), shl.bv16_2(hdr.tcp.dataOffset));
            }
            if(bugt.bv16(meta.tcp_payload_len, 0)){
                // read
                fc_last_sw_time := sw_time_0.read(sw_time_0, meta.id);
                if(bugt.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 780)){
                    // write
                    call sw_time_0.write(meta.id, meta.ingress_timestamp_millisecond);
                    // write
                    call sw_index_0.write(meta.id, 0);
                    // write
                    call sw_sum_0.write(meta.id, 0);
                    // write
                    call sw_0.write(mul.bv32(meta.id, 10), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 1), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 2), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 3), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 4), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 5), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 6), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 7), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 8), 0);
                    // write
                    call sw_0.write(add.bv32(mul.bv32(meta.id, 10), 9), 0);
                }
                // read
                fc_last_sw_time := sw_time_0.read(sw_time_0, meta.id);
                // read
                fc_cur_sw_index := sw_index_0.read(sw_index_0, meta.id);
                // read
                fc_cur_sw_sum := sw_sum_0.read(sw_sum_0, meta.id);
                if(bugt.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 78)){
                    if(bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 78)){
                        fc_shift := 0;
                    }
                    else{
                        if(bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 156)){
                            fc_shift := 1;
                        }
                        else{
                            if(bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 234)){
                                fc_shift := 2;
                            }
                            else{
                                if(bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 312)){
                                    fc_shift := 3;
                                }
                                else{
                                    if(bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_sw_time), 390)){
                                        fc_shift := 4;
                                    }
                                    else{
                                        fc_shift := 5;
                                    }
                                }
                            }
                        }
                    }
                    if(bugt.bv48(fc_shift, 0)){
                        fc_last_sw_time := add.bv19(fc_last_sw_time, 78);
                        fc_cur_sw_index := add.bv4(fc_cur_sw_index, 1);
                        if(bsge.bv4(fc_cur_sw_index, 10)){
                            fc_cur_sw_index := 0;
                        }
                        // read
                        fc_cur_sw_val := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index));
                        fc_cur_sw_sum := sub.bv6(fc_cur_sw_sum, fc_cur_sw_val);
                        // write
                        call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index), 0);
                        fc_shift := add.bv48(fc_shift, 281474976710655);
                    }
                    if(bugt.bv48(fc_shift, 0)){
                        fc_last_sw_time := add.bv19(fc_last_sw_time, 78);
                        fc_cur_sw_index := add.bv4(fc_cur_sw_index, 1);
                        if(bsge.bv4(fc_cur_sw_index, 10)){
                            fc_cur_sw_index := 0;
                        }
                        // read
                        fc_cur_sw_val := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index));
                        fc_cur_sw_sum := sub.bv6(fc_cur_sw_sum, fc_cur_sw_val);
                        // write
                        call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index), 0);
                        fc_shift := add.bv48(fc_shift, 281474976710655);
                    }
                    if(bugt.bv48(fc_shift, 0)){
                        fc_last_sw_time := add.bv19(fc_last_sw_time, 78);
                        fc_cur_sw_index := add.bv4(fc_cur_sw_index, 1);
                        if(bsge.bv4(fc_cur_sw_index, 10)){
                            fc_cur_sw_index := 0;
                        }
                        // read
                        fc_cur_sw_val := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index));
                        fc_cur_sw_sum := sub.bv6(fc_cur_sw_sum, fc_cur_sw_val);
                        // write
                        call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index), 0);
                        fc_shift := add.bv48(fc_shift, 281474976710655);
                    }
                    if(bugt.bv48(fc_shift, 0)){
                        fc_last_sw_time := add.bv19(fc_last_sw_time, 78);
                        fc_cur_sw_index := add.bv4(fc_cur_sw_index, 1);
                        if(bsge.bv4(fc_cur_sw_index, 10)){
                            fc_cur_sw_index := 0;
                        }
                        // read
                        fc_cur_sw_val := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index));
                        fc_cur_sw_sum := sub.bv6(fc_cur_sw_sum, fc_cur_sw_val);
                        // write
                        call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index), 0);
                        fc_shift := add.bv48(fc_shift, 281474976710655);
                    }
                    if(bugt.bv48(fc_shift, 0)){
                        fc_last_sw_time := add.bv19(fc_last_sw_time, 78);
                        fc_cur_sw_index := add.bv4(fc_cur_sw_index, 1);
                        if(bsge.bv4(fc_cur_sw_index, 10)){
                            fc_cur_sw_index := 0;
                        }
                        // read
                        fc_cur_sw_val := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index));
                        fc_cur_sw_sum := sub.bv6(fc_cur_sw_sum, fc_cur_sw_val);
                        // write
                        call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_cur_sw_index), 0);
                    }
                    // write
                    call sw_time_0.write(meta.id, fc_last_sw_time);
                    // write
                    call sw_index_0.write(meta.id, fc_cur_sw_index);
                    // write
                    call sw_sum_0.write(meta.id, fc_cur_sw_sum);
                }
                // hash
                assume(bsge.(fc_newflow_key, 0) && bsge.(4294967295, fc_newflow_key));
                havoc fc_newflow_key;
                fc_newflow_key := add.bv32(fc_newflow_key, 1);
                // hash
                assume(bsge.(fc_cell_id, 0) && bsge.(64, fc_cell_id));
                havoc fc_cell_id;
                meta.flowselector_cellid := fc_cell_id;
                fc_flowselector_index := add.bv32(shl.bv32_6(meta.id), fc_cell_id);
                // read
                fc_curflow_key := flowselector_key_0.read(flowselector_key_0, fc_flowselector_index);
                // read
                fc_curflow_ts := flowselector_ts_0.read(flowselector_ts_0, fc_flowselector_index);
                // read
                fc_curflow_nep := flowselector_nep_0.read(flowselector_nep_0, fc_flowselector_index);
                // read
                fc_rerouting_ts_tmp := rerouting_ts_0.read(rerouting_ts_0, meta.id);
                if(((fc_curflow_key == fc_newflow_key)) && (bsge.bv9(meta.ingress_timestamp_second, fc_curflow_ts))){
                    meta.selected := 1;
                    if((hdr.tcp.fin == 1)){
                        // read
                        fc_last_ret_ts := flowselector_last_ret_0.read(flowselector_last_ret_0, fc_flowselector_index);
                        // read
                        fc_time_tmp := sw_time_0.read(sw_time_0, meta.id);
                        if((bult.bv48(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_ret_ts), add.bv19(702, sub.bv19(meta.ingress_timestamp_millisecond, fc_time_tmp)))) && (bugt.bv19(fc_last_ret_ts, 0))){
                            // read
                            fc_index_prev := flowselector_last_ret_bin_0.read(flowselector_last_ret_bin_0, fc_flowselector_index);
                            // read
                            fc_bin_value_tmp := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_index_prev));
                            // read
                            fc_sum_tmp := sw_sum_0.read(sw_sum_0, meta.id);
                            // write
                            call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_index_prev), add.bv6(fc_bin_value_tmp, 63));
                            // write
                            call sw_sum_0.write(meta.id, add.bv6(fc_sum_tmp, 63));
                        }
                        // write
                        call flowselector_key_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_nep_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_ts_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_last_ret_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_correctness_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_fwloops_0.write(fc_flowselector_index, 0);
                    }
                    else{
                        if((fc_curflow_nep == add.bv32(hdr.tcp.seqNo, meta.tcp_payload_len))){
                            meta.is_retransmission := 1;
                            // read
                            fc_last_ret_ts := flowselector_last_ret_0.read(flowselector_last_ret_0, fc_flowselector_index);
                            // read
                            fc_time_tmp := sw_time_0.read(sw_time_0, meta.id);
                            if((bult.bv48(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_ret_ts), add.bv19(702, sub.bv19(meta.ingress_timestamp_millisecond, fc_time_tmp)))) && (bugt.bv19(fc_last_ret_ts, 0))){
                                // read
                                fc_index_prev := flowselector_last_ret_bin_0.read(flowselector_last_ret_bin_0, fc_flowselector_index);
                                // read
                                fc_bin_value_tmp := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_index_prev));
                                // read
                                fc_sum_tmp := sw_sum_0.read(sw_sum_0, meta.id);
                                // write
                                call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_index_prev), add.bv6(fc_bin_value_tmp, 63));
                                // write
                                call sw_sum_0.write(meta.id, add.bv6(fc_sum_tmp, 63));
                            }
                            // read
                            fc_index_tmp := sw_index_0.read(sw_index_0, meta.id);
                            // read
                            fc_bin_value_tmp := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_index_tmp));
                            // read
                            fc_sum_tmp := sw_sum_0.read(sw_sum_0, meta.id);
                            // write
                            call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_index_tmp), add.bv6(fc_bin_value_tmp, 1));
                            // write
                            call sw_sum_0.write(meta.id, add.bv6(fc_sum_tmp, 1));
                            // read
                            fc_time_tmp := sw_time_0.read(sw_time_0, meta.id);
                            // write
                            call flowselector_last_ret_0.write(fc_flowselector_index, meta.ingress_timestamp_millisecond);
                            // write
                            call flowselector_last_ret_bin_0.write(fc_flowselector_index, fc_index_tmp);
                        }
                        else{
                            if((bugt.bv19(fc_rerouting_ts_tmp, 0)) && (bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, fc_rerouting_ts_tmp), 976))){
                                // read
                                fc_flowselector_correctness_tmp := flowselector_correctness_0.read(flowselector_correctness_0, add.bv32(shl.bv32_6(meta.id), meta.flowselector_cellid));
                                if((fc_flowselector_correctness_tmp == 0)){
                                    if(bult.bv32(meta.flowselector_cellid, 32)){
                                        // read
                                        fc_correctness_tmp := nbflows_progressing_2.read(nbflows_progressing_2, meta.id);
                                        // write
                                        call nbflows_progressing_2.write(meta.id, add.bv6(fc_correctness_tmp, 1));
                                    }
                                    else{
                                        // read
                                        fc_correctness_tmp := nbflows_progressing_3.read(nbflows_progressing_3, meta.id);
                                        // write
                                        call nbflows_progressing_3.write(meta.id, add.bv6(fc_correctness_tmp, 1));
                                    }
                                }
                                // write
                                call flowselector_correctness_0.write(add.bv32(shl.bv32_6(meta.id), meta.flowselector_cellid), 1);
                            }
                        }
                        // write
                        call flowselector_ts_0.write(fc_flowselector_index, meta.ingress_timestamp_second);
                        // write
                        call flowselector_nep_0.write(fc_flowselector_index, add.bv32(hdr.tcp.seqNo, meta.tcp_payload_len));
                    }
                }
                else{
                    if(((((fc_curflow_key == 0)) || (bugt.bv9(sub.bv9(meta.ingress_timestamp_second, fc_curflow_ts), 2))) || (bult.bv9(meta.ingress_timestamp_second, fc_curflow_ts))) && ((hdr.tcp.fin == 0))){
                        meta.selected := 1;
                        if(bugt.bv32(fc_curflow_key, 0)){
                            // read
                            fc_last_ret_ts := flowselector_last_ret_0.read(flowselector_last_ret_0, fc_flowselector_index);
                            // read
                            fc_time_tmp := sw_time_0.read(sw_time_0, meta.id);
                            if((bult.bv48(sub.bv19(meta.ingress_timestamp_millisecond, fc_last_ret_ts), add.bv19(702, sub.bv19(meta.ingress_timestamp_millisecond, fc_time_tmp)))) && (bugt.bv19(fc_last_ret_ts, 0))){
                                // read
                                fc_index_prev := flowselector_last_ret_bin_0.read(flowselector_last_ret_bin_0, fc_flowselector_index);
                                // read
                                fc_bin_value_tmp := sw_0.read(sw_0, add.bv32(mul.bv32(meta.id, 10), fc_index_prev));
                                // read
                                fc_sum_tmp := sw_sum_0.read(sw_sum_0, meta.id);
                                // write
                                call sw_0.write(add.bv32(mul.bv32(meta.id, 10), fc_index_prev), add.bv6(fc_bin_value_tmp, 63));
                                // write
                                call sw_sum_0.write(meta.id, add.bv6(fc_sum_tmp, 63));
                            }
                        }
                        // write
                        call flowselector_key_0.write(fc_flowselector_index, fc_newflow_key);
                        // write
                        call flowselector_nep_0.write(fc_flowselector_index, add.bv32(hdr.tcp.seqNo, meta.tcp_payload_len));
                        // write
                        call flowselector_ts_0.write(fc_flowselector_index, meta.ingress_timestamp_second);
                        // write
                        call flowselector_last_ret_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_correctness_0.write(fc_flowselector_index, 0);
                        // write
                        call flowselector_fwloops_0.write(fc_flowselector_index, 0);
                    }
                }
                // read
                sum_tmp_0 := sw_sum_0.read(sw_sum_0, meta.id);
                // read
                nh_avaibility_1_tmp_0 := nh_avaibility_1.read(nh_avaibility_1, meta.id);
                if((bugt.bv6(sum_tmp_0, threshold_tmp_0)) && ((nh_avaibility_1_tmp_0 == 0))){
                    // write
                    call nh_avaibility_1.write(meta.id, 1);
                    // write
                    call nbflows_progressing_2.write(meta.id, 0);
                    // write
                    call nbflows_progressing_3.write(meta.id, 0);
                    // write
                    call rerouting_ts_0.write(meta.id, meta.ingress_timestamp_millisecond);
                }
            }
        }
        if((meta.use_blink == 1)){
            // read
            nh_avaibility_1_tmp_0 := nh_avaibility_1.read(nh_avaibility_1, meta.id);
            // read
            nh_avaibility_2_tmp_0 := nh_avaibility_2.read(nh_avaibility_2, meta.id);
            // read
            nh_avaibility_3_tmp_0 := nh_avaibility_3.read(nh_avaibility_3, meta.id);
            // read
            rerouting_ts_tmp_0 := rerouting_ts_0.read(rerouting_ts_0, meta.id);
            if((((meta.selected == 1)) && (bugt.bv19(rerouting_ts_tmp_0, 0))) && (bult.bv19(sub.bv19(meta.ingress_timestamp_millisecond, rerouting_ts_tmp_0), 976))){
                if(bult.bv32(meta.flowselector_cellid, 32)){
                    if((nh_avaibility_2_tmp_0 == 0)){
                        // read
                        meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, add.bv32(mul.bv32(meta.id, 3), 1));
                        if((meta.is_retransmission == 1)){
                            // read
                            flowselector_fwloops_tmp_0 := flowselector_fwloops_0.read(flowselector_fwloops_0, add.bv32(shl.bv32_6(meta.id), meta.flowselector_cellid));
                            if((flowselector_fwloops_tmp_0 == 3)){
                                // write
                                call nh_avaibility_2.write(meta.id, 1);
                                nh_avaibility_2_tmp_0 := 1;
                            }
                            else{
                                // write
                                call flowselector_fwloops_0.write(add.bv32(shl.bv32_6(meta.id), meta.flowselector_cellid), add.bv2(flowselector_fwloops_tmp_0, 1));
                            }
                        }
                    }
                    else{
                        if((nh_avaibility_3_tmp_0 == 0)){
                            // read
                            meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, add.bv32(mul.bv32(meta.id, 3), 2));
                        }
                        else{
                            // read
                            meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, mul.bv32(meta.id, 3));
                        }
                    }
                }
                else{
                    if((nh_avaibility_3_tmp_0 == 0)){
                        // read
                        meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, add.bv32(mul.bv32(meta.id, 3), 2));
                        if((meta.is_retransmission == 1)){
                            // read
                            flowselector_fwloops_tmp_0 := flowselector_fwloops_0.read(flowselector_fwloops_0, add.bv32(shl.bv32_6(meta.id), meta.flowselector_cellid));
                            if((flowselector_fwloops_tmp_0 == 3)){
                                // write
                                call nh_avaibility_3.write(meta.id, 1);
                                nh_avaibility_3_tmp_0 := 1;
                            }
                            else{
                                // write
                                call flowselector_fwloops_0.write(add.bv32(shl.bv32_6(meta.id), meta.flowselector_cellid), add.bv2(flowselector_fwloops_tmp_0, 1));
                            }
                        }
                    }
                    else{
                        if((nh_avaibility_2_tmp_0 == 0)){
                            // read
                            meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, add.bv32(mul.bv32(meta.id, 3), 1));
                        }
                        else{
                            // read
                            meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, mul.bv32(meta.id, 3));
                        }
                    }
                }
            }
            else{
                if((nh_avaibility_1_tmp_0 == 0)){
                    // read
                    meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, mul.bv32(meta.id, 3));
                }
                else{
                    if((nh_avaibility_2_tmp_0 == 0)){
                        // read
                        meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, add.bv32(mul.bv32(meta.id, 3), 1));
                    }
                    else{
                        if((nh_avaibility_3_tmp_0 == 0)){
                            // read
                            meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, add.bv32(mul.bv32(meta.id, 3), 2));
                        }
                        else{
                            // read
                            meta.next_hop_port := next_hops_port_0.read(next_hops_port_0, mul.bv32(meta.id, 3));
                        }
                    }
                }
            }
            if((bugt.bv19(rerouting_ts_tmp_0, 0)) && (bugt.bv19(sub.bv19(meta.ingress_timestamp_millisecond, rerouting_ts_tmp_0), 976))){
                // read
                correctness_tmp_0 := nbflows_progressing_2.read(nbflows_progressing_2, meta.id);
                if((bult.bv6(correctness_tmp_0, shr.bv6_1(threshold_tmp_0))) && ((nh_avaibility_2_tmp_0 == 0))){
                    // write
                    call nh_avaibility_2.write(meta.id, 1);
                }
                // read
                correctness_tmp_0 := nbflows_progressing_3.read(nbflows_progressing_3, meta.id);
                if((bult.bv6(correctness_tmp_0, shr.bv6_1(threshold_tmp_0))) && ((nh_avaibility_3_tmp_0 == 0))){
                    // write
                    call nh_avaibility_3.write(meta.id, 1);
                }
            }
        }
        call send_0.apply();
    }
}
procedure {:inline 1} main()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.checksum, _old_hdr.icmp.code, _old_hdr.icmp.type, _old_hdr.icmp.unused, _old_hdr.ipv4.dscp, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.ecn, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.ipv4_icmp.dscp, _old_hdr.ipv4_icmp.dstAddr, _old_hdr.ipv4_icmp.ecn, _old_hdr.ipv4_icmp.flags, _old_hdr.ipv4_icmp.fragOffset, _old_hdr.ipv4_icmp.hdrChecksum, _old_hdr.ipv4_icmp.identification, _old_hdr.ipv4_icmp.ihl, _old_hdr.ipv4_icmp.protocol, _old_hdr.ipv4_icmp.srcAddr, _old_hdr.ipv4_icmp.totalLen, _old_hdr.ipv4_icmp.ttl, _old_hdr.ipv4_icmp.version, _old_hdr.tcp.ack, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.cwr, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.ece, _old_hdr.tcp.fin, _old_hdr.tcp.psh, _old_hdr.tcp.res, _old_hdr.tcp.rst, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.syn, _old_hdr.tcp.urg, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, correctness_tmp_0, drop, emit, fc_bin_value_tmp, fc_cell_id, fc_correctness_tmp, fc_cur_sw_index, fc_cur_sw_sum, fc_cur_sw_val, fc_curflow_key, fc_curflow_nep, fc_curflow_ts, fc_flowselector_correctness_tmp, fc_flowselector_index, fc_index_prev, fc_index_tmp, fc_last_ret_ts, fc_last_sw_time, fc_newflow_key, fc_rerouting_ts_tmp, fc_shift, fc_sum_tmp, fc_time_tmp, flowselector_correctness_0, flowselector_fwloops_0, flowselector_fwloops_tmp_0, flowselector_key_0, flowselector_last_ret_0, flowselector_last_ret_bin_0, flowselector_nep_0, flowselector_ts_0, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.checksum, hdr.icmp.code, hdr.icmp.type, hdr.icmp.unused, hdr.icmp.valid, hdr.ipv4.dscp, hdr.ipv4.dstAddr, hdr.ipv4.ecn, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_icmp, hdr.ipv4_icmp.dscp, hdr.ipv4_icmp.dstAddr, hdr.ipv4_icmp.ecn, hdr.ipv4_icmp.flags, hdr.ipv4_icmp.fragOffset, hdr.ipv4_icmp.hdrChecksum, hdr.ipv4_icmp.identification, hdr.ipv4_icmp.ihl, hdr.ipv4_icmp.protocol, hdr.ipv4_icmp.srcAddr, hdr.ipv4_icmp.totalLen, hdr.ipv4_icmp.ttl, hdr.ipv4_icmp.valid, hdr.ipv4_icmp.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, isValid, meta.bgp_ngh_type, meta.flowselector_cellid, meta.id, meta.ingress_timestamp_millisecond, meta.ingress_timestamp_second, meta.is_retransmission, meta.next_hop_port, meta.selected, meta.tcp_payload_len, meta.use_blink, nbflows_progressing_2, nbflows_progressing_3, nh_avaibility_1, nh_avaibility_1_tmp_0, nh_avaibility_2, nh_avaibility_2_tmp_0, nh_avaibility_3, nh_avaibility_3_tmp_0, rerouting_ts_0, rerouting_ts_tmp_0, standard_metadata.egress_spec, standard_metadata.ingress_port, sum_tmp_0, sw_0, sw_index_0, sw_sum_0, sw_time_0, threshold_tmp_0, timestamp_reference_0, tmp_mac_0, ts_tmp_0;
{
    call havocProcedure();
    call clear_drop();
    call clear_forward();
    call _parser_ParserImpl();
    call verifyChecksum();
    call ingress();
    call egress();
    call computeChecksum();
}
procedure mainProcedure()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.checksum, _old_hdr.icmp.code, _old_hdr.icmp.type, _old_hdr.icmp.unused, _old_hdr.ipv4.dscp, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.ecn, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.ipv4_icmp.dscp, _old_hdr.ipv4_icmp.dstAddr, _old_hdr.ipv4_icmp.ecn, _old_hdr.ipv4_icmp.flags, _old_hdr.ipv4_icmp.fragOffset, _old_hdr.ipv4_icmp.hdrChecksum, _old_hdr.ipv4_icmp.identification, _old_hdr.ipv4_icmp.ihl, _old_hdr.ipv4_icmp.protocol, _old_hdr.ipv4_icmp.srcAddr, _old_hdr.ipv4_icmp.totalLen, _old_hdr.ipv4_icmp.ttl, _old_hdr.ipv4_icmp.version, _old_hdr.tcp.ack, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.cwr, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.ece, _old_hdr.tcp.fin, _old_hdr.tcp.psh, _old_hdr.tcp.res, _old_hdr.tcp.rst, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.syn, _old_hdr.tcp.urg, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, bgp_tag_0.action_run, correctness_tmp_0, drop, emit, fc_bin_value_tmp, fc_cell_id, fc_correctness_tmp, fc_cur_sw_index, fc_cur_sw_sum, fc_cur_sw_val, fc_curflow_key, fc_curflow_nep, fc_curflow_ts, fc_flowselector_correctness_tmp, fc_flowselector_index, fc_index_prev, fc_index_tmp, fc_last_ret_ts, fc_last_sw_time, fc_newflow_key, fc_rerouting_ts_tmp, fc_shift, fc_sum_tmp, fc_time_tmp, flowselector_correctness_0, flowselector_fwloops_0, flowselector_fwloops_tmp_0, flowselector_key_0, flowselector_last_ret_0, flowselector_last_ret_bin_0, flowselector_nep_0, flowselector_ts_0, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.checksum, hdr.icmp.code, hdr.icmp.type, hdr.icmp.unused, hdr.icmp.valid, hdr.ipv4.dscp, hdr.ipv4.dstAddr, hdr.ipv4.ecn, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.ipv4_icmp, hdr.ipv4_icmp.dscp, hdr.ipv4_icmp.dstAddr, hdr.ipv4_icmp.ecn, hdr.ipv4_icmp.flags, hdr.ipv4_icmp.fragOffset, hdr.ipv4_icmp.hdrChecksum, hdr.ipv4_icmp.identification, hdr.ipv4_icmp.ihl, hdr.ipv4_icmp.protocol, hdr.ipv4_icmp.srcAddr, hdr.ipv4_icmp.totalLen, hdr.ipv4_icmp.ttl, hdr.ipv4_icmp.valid, hdr.ipv4_icmp.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, isValid, meta.bgp_ngh_type, meta.flowselector_cellid, meta.id, meta.ingress_timestamp_millisecond, meta.ingress_timestamp_second, meta.is_retransmission, meta.next_hop_port, meta.selected, meta.tcp_payload_len, meta.use_blink, meta_fwtable_0.action_run, nbflows_progressing_2, nbflows_progressing_3, nh_avaibility_1, nh_avaibility_1_tmp_0, nh_avaibility_2, nh_avaibility_2_tmp_0, nh_avaibility_3, nh_avaibility_3_tmp_0, rerouting_ts_0, rerouting_ts_tmp_0, send_0.action_run, standard_metadata.egress_spec, standard_metadata.ingress_port, sum_tmp_0, sw_0, sw_index_0, sw_sum_0, sw_time_0, threshold_tmp_0, timestamp_reference_0, tmp_mac_0, ts_tmp_0;
{
    call send_0.action_run.limit();
    call bgp_tag_0.action_run.limit();
    call meta_fwtable_0.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;

procedure meta_fwtable_0.action_run.limit();
    ensures(meta_fwtable_0.action_run==meta_fwtable_0.action.set_meta);
	modifies meta_fwtable_0.action_run;

// Table meta_fwtable_0
procedure {:inline 1} meta_fwtable_0.apply()
	modifies hdr.ipv4.dstAddr, meta.bgp_ngh_type, meta.id, meta.next_hop_port, meta.use_blink;
{
    var set_meta.default_nexthop_port:int;
    var set_meta.use_blink:int;
    var set_meta.id:int;
    hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    meta.bgp_ngh_type := meta.bgp_ngh_type;

    call meta_fwtable_0.apply_table_entry();

    action_set_meta:
    if(meta_fwtable_0.action_run == meta_fwtable_0.action.set_meta){
        call set_meta(set_meta.id, set_meta.use_blink, set_meta.default_nexthop_port);
    }
}

// Table Entry meta_fwtable_0.apply_table_entry
procedure meta_fwtable_0.apply_table_entry();

// Table Exit meta_fwtable_0.apply_table_exit
procedure meta_fwtable_0.apply_table_exit();
function nbflows_progressing_2.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} nbflows_progressing_2.write(index:int, value:int)
	modifies nbflows_progressing_2;
{
    nbflows_progressing_2[index] := value;
}
function nbflows_progressing_3.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} nbflows_progressing_3.write(index:int, value:int)
	modifies nbflows_progressing_3;
{
    nbflows_progressing_3[index] := value;
}
function next_hops_port_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} next_hops_port_0.write(index:int, value:int)
	modifies next_hops_port_0;
{
    next_hops_port_0[index] := value;
}
function nh_avaibility_1.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} nh_avaibility_1.write(index:int, value:int)
	modifies nh_avaibility_1;
{
    nh_avaibility_1[index] := value;
}
function nh_avaibility_2.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} nh_avaibility_2.write(index:int, value:int)
	modifies nh_avaibility_2;
{
    nh_avaibility_2[index] := value;
}
function nh_avaibility_3.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} nh_avaibility_3.write(index:int, value:int)
	modifies nh_avaibility_3;
{
    nh_avaibility_3[index] := value;
}

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies hdr.ipv4.valid, hdr.tcp.valid;
{
    hdr.ipv4.valid := true;
    if(hdr.ipv4.protocol == 6){
        call parse_tcp();
    }
}

//Parser State parse_tcp
procedure {:inline 1} parse_tcp()
	modifies hdr.tcp.valid;
{
    hdr.tcp.valid := true;
    call accept();
}
procedure reject();
    ensures drop==true;
	modifies drop;
function rerouting_ts_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} rerouting_ts_0.write(index:int, value:int)
	modifies rerouting_ts_0;
{
    rerouting_ts_0[index] := value;
}

procedure send_0.action_run.limit();
    ensures(send_0.action_run==send_0.action.set_nh);
	modifies send_0.action_run;

// Table send_0
procedure {:inline 1} send_0.apply()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.ttl, meta.next_hop_port, standard_metadata.egress_spec;
{
    var set_nh.dmac:EthernetAddress;
    var set_nh.smac:EthernetAddress;
    var set_nh.port:int;
    meta.next_hop_port := meta.next_hop_port;

    call send_0.apply_table_entry();

    action_set_nh:
    if(send_0.action_run == send_0.action.set_nh){
        call set_nh(set_nh.port, set_nh.smac, set_nh.dmac);
    }
}

// Table Entry send_0.apply_table_entry
procedure send_0.apply_table_entry();

// Table Exit send_0.apply_table_exit
procedure send_0.apply_table_exit();
procedure {:inline 1} setInvalid(header:Ref);
    ensures (isValid[header] == false);
	modifies isValid;
procedure {:inline 1} setValid(header:Ref);

// Action set_bgp_tag
procedure {:inline 1} set_bgp_tag(neighbor_bgp_type:int)
	modifies meta.bgp_ngh_type;
{
    meta.bgp_ngh_type := neighbor_bgp_type;
}

// Action set_meta
procedure {:inline 1} set_meta(id:int, use_blink:int, default_nexthop_port:int)
	modifies meta.id, meta.next_hop_port, meta.use_blink;
{
    meta.id := id;
    meta.use_blink := use_blink;
    meta.next_hop_port := default_nexthop_port;
}

// Action set_nh
procedure {:inline 1} set_nh(port:int, smac:EthernetAddress, dmac:EthernetAddress)
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.ttl, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := port;
    forward := true;
    hdr.ethernet.srcAddr := smac;
    hdr.ethernet.dstAddr := dmac;
    hdr.ipv4.ttl := add.bv8(hdr.ipv4.ttl, 255);
}

//Parser State start
procedure {:inline 1} start()
	modifies hdr.ethernet.valid, hdr.ipv4.valid, hdr.tcp.valid;
{
    hdr.ethernet.valid := true;
    if(hdr.ethernet.etherType == 2048){
        call parse_ipv4();
    }
}
function sw_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} sw_0.write(index:int, value:int)
	modifies sw_0;
{
    sw_0[index] := value;
}
function sw_index_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} sw_index_0.write(index:int, value:int)
	modifies sw_index_0;
{
    sw_index_0[index] := value;
}
function sw_sum_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} sw_sum_0.write(index:int, value:int)
	modifies sw_sum_0;
{
    sw_sum_0[index] := value;
}
function sw_time_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} sw_time_0.write(index:int, value:int)
	modifies sw_time_0;
{
    sw_time_0[index] := value;
}
function switch_ip_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} switch_ip_0.write(index:int, value:int)
	modifies switch_ip_0;
{
    switch_ip_0[index] := value;
}
function threshold_registers_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} threshold_registers_0.write(index:int, value:int)
	modifies threshold_registers_0;
{
    threshold_registers_0[index] := value;
}
function timestamp_reference_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} timestamp_reference_0.write(index:int, value:int)
	modifies timestamp_reference_0;
{
    timestamp_reference_0[index] := value;
}

// Control verifyChecksum
procedure {:inline 1} verifyChecksum()
{
}
