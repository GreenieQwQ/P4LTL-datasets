//#LTLProperty: ![](drop)
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
type egressSpec_t = int;
type macAddr_t = int;
type ip4Addr_t = int;
type time_t = int;

// Struct parser_metadata_t

// Struct metadata
var meta.egress_spec:int;
var meta.parser_metadata.remaining:int;

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.dstAddr:macAddr_t;
var _old_header_hdr.ethernet.dstAddr:macAddr_t;
var hdr.ethernet.srcAddr:macAddr_t;
var _old_header_hdr.ethernet.srcAddr:macAddr_t;
var hdr.ethernet.etherType:int;
var _old_header_hdr.ethernet.etherType:int;

// Header ipv4_t
var hdr.ipv4:Ref;
var hdr.ipv4.version:int;
var _old_header_hdr.ipv4.version:int;
var hdr.ipv4.ihl:int;
var _old_header_hdr.ipv4.ihl:int;
var hdr.ipv4.diffserv:int;
var _old_header_hdr.ipv4.diffserv:int;
var hdr.ipv4.totalLen:int;
var _old_header_hdr.ipv4.totalLen:int;
var hdr.ipv4.identification:int;
var _old_header_hdr.ipv4.identification:int;
var hdr.ipv4.flags:int;
var _old_header_hdr.ipv4.flags:int;
var hdr.ipv4.fragOffset:int;
var _old_header_hdr.ipv4.fragOffset:int;
var hdr.ipv4.ttl:int;
var _old_header_hdr.ipv4.ttl:int;
var hdr.ipv4.protocol:int;
var _old_header_hdr.ipv4.protocol:int;
var hdr.ipv4.hdrChecksum:int;
var _old_header_hdr.ipv4.hdrChecksum:int;
var hdr.ipv4.srcAddr:ip4Addr_t;
var _old_header_hdr.ipv4.srcAddr:ip4Addr_t;
var hdr.ipv4.dstAddr:ip4Addr_t;
var _old_header_hdr.ipv4.dstAddr:ip4Addr_t;

// Header probe_t
var hdr.probe:Ref;
var hdr.probe.hop_cnt:int;
var _old_header_hdr.probe.hop_cnt:int;
const hdr.probe_data:HeaderStack;

// Header probe_data_t
var hdr.probe_data.last:Ref;
var hdr.probe_data.last.bos:int;
var _old_header_hdr.probe_data.last.bos:int;
var hdr.probe_data.last.swid:int;
var _old_header_hdr.probe_data.last.swid:int;
var hdr.probe_data.last.port:int;
var _old_header_hdr.probe_data.last.port:int;
var hdr.probe_data.last.byte_cnt:int;
var _old_header_hdr.probe_data.last.byte_cnt:int;
var hdr.probe_data.last.last_time:time_t;
var _old_header_hdr.probe_data.last.last_time:time_t;
var hdr.probe_data.last.cur_time:time_t;
var _old_header_hdr.probe_data.last.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.0:Ref;
var hdr.probe_data.0.bos:int;
var _old_header_hdr.probe_data.0.bos:int;
var hdr.probe_data.0.swid:int;
var _old_header_hdr.probe_data.0.swid:int;
var hdr.probe_data.0.port:int;
var _old_header_hdr.probe_data.0.port:int;
var hdr.probe_data.0.byte_cnt:int;
var _old_header_hdr.probe_data.0.byte_cnt:int;
var hdr.probe_data.0.last_time:time_t;
var _old_header_hdr.probe_data.0.last_time:time_t;
var hdr.probe_data.0.cur_time:time_t;
var _old_header_hdr.probe_data.0.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.1:Ref;
var hdr.probe_data.1.bos:int;
var _old_header_hdr.probe_data.1.bos:int;
var hdr.probe_data.1.swid:int;
var _old_header_hdr.probe_data.1.swid:int;
var hdr.probe_data.1.port:int;
var _old_header_hdr.probe_data.1.port:int;
var hdr.probe_data.1.byte_cnt:int;
var _old_header_hdr.probe_data.1.byte_cnt:int;
var hdr.probe_data.1.last_time:time_t;
var _old_header_hdr.probe_data.1.last_time:time_t;
var hdr.probe_data.1.cur_time:time_t;
var _old_header_hdr.probe_data.1.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.2:Ref;
var hdr.probe_data.2.bos:int;
var _old_header_hdr.probe_data.2.bos:int;
var hdr.probe_data.2.swid:int;
var _old_header_hdr.probe_data.2.swid:int;
var hdr.probe_data.2.port:int;
var _old_header_hdr.probe_data.2.port:int;
var hdr.probe_data.2.byte_cnt:int;
var _old_header_hdr.probe_data.2.byte_cnt:int;
var hdr.probe_data.2.last_time:time_t;
var _old_header_hdr.probe_data.2.last_time:time_t;
var hdr.probe_data.2.cur_time:time_t;
var _old_header_hdr.probe_data.2.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.3:Ref;
var hdr.probe_data.3.bos:int;
var _old_header_hdr.probe_data.3.bos:int;
var hdr.probe_data.3.swid:int;
var _old_header_hdr.probe_data.3.swid:int;
var hdr.probe_data.3.port:int;
var _old_header_hdr.probe_data.3.port:int;
var hdr.probe_data.3.byte_cnt:int;
var _old_header_hdr.probe_data.3.byte_cnt:int;
var hdr.probe_data.3.last_time:time_t;
var _old_header_hdr.probe_data.3.last_time:time_t;
var hdr.probe_data.3.cur_time:time_t;
var _old_header_hdr.probe_data.3.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.4:Ref;
var hdr.probe_data.4.bos:int;
var _old_header_hdr.probe_data.4.bos:int;
var hdr.probe_data.4.swid:int;
var _old_header_hdr.probe_data.4.swid:int;
var hdr.probe_data.4.port:int;
var _old_header_hdr.probe_data.4.port:int;
var hdr.probe_data.4.byte_cnt:int;
var _old_header_hdr.probe_data.4.byte_cnt:int;
var hdr.probe_data.4.last_time:time_t;
var _old_header_hdr.probe_data.4.last_time:time_t;
var hdr.probe_data.4.cur_time:time_t;
var _old_header_hdr.probe_data.4.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.5:Ref;
var hdr.probe_data.5.bos:int;
var _old_header_hdr.probe_data.5.bos:int;
var hdr.probe_data.5.swid:int;
var _old_header_hdr.probe_data.5.swid:int;
var hdr.probe_data.5.port:int;
var _old_header_hdr.probe_data.5.port:int;
var hdr.probe_data.5.byte_cnt:int;
var _old_header_hdr.probe_data.5.byte_cnt:int;
var hdr.probe_data.5.last_time:time_t;
var _old_header_hdr.probe_data.5.last_time:time_t;
var hdr.probe_data.5.cur_time:time_t;
var _old_header_hdr.probe_data.5.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.6:Ref;
var hdr.probe_data.6.bos:int;
var _old_header_hdr.probe_data.6.bos:int;
var hdr.probe_data.6.swid:int;
var _old_header_hdr.probe_data.6.swid:int;
var hdr.probe_data.6.port:int;
var _old_header_hdr.probe_data.6.port:int;
var hdr.probe_data.6.byte_cnt:int;
var _old_header_hdr.probe_data.6.byte_cnt:int;
var hdr.probe_data.6.last_time:time_t;
var _old_header_hdr.probe_data.6.last_time:time_t;
var hdr.probe_data.6.cur_time:time_t;
var _old_header_hdr.probe_data.6.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.7:Ref;
var hdr.probe_data.7.bos:int;
var _old_header_hdr.probe_data.7.bos:int;
var hdr.probe_data.7.swid:int;
var _old_header_hdr.probe_data.7.swid:int;
var hdr.probe_data.7.port:int;
var _old_header_hdr.probe_data.7.port:int;
var hdr.probe_data.7.byte_cnt:int;
var _old_header_hdr.probe_data.7.byte_cnt:int;
var hdr.probe_data.7.last_time:time_t;
var _old_header_hdr.probe_data.7.last_time:time_t;
var hdr.probe_data.7.cur_time:time_t;
var _old_header_hdr.probe_data.7.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.8:Ref;
var hdr.probe_data.8.bos:int;
var _old_header_hdr.probe_data.8.bos:int;
var hdr.probe_data.8.swid:int;
var _old_header_hdr.probe_data.8.swid:int;
var hdr.probe_data.8.port:int;
var _old_header_hdr.probe_data.8.port:int;
var hdr.probe_data.8.byte_cnt:int;
var _old_header_hdr.probe_data.8.byte_cnt:int;
var hdr.probe_data.8.last_time:time_t;
var _old_header_hdr.probe_data.8.last_time:time_t;
var hdr.probe_data.8.cur_time:time_t;
var _old_header_hdr.probe_data.8.cur_time:time_t;

// Header probe_data_t
var hdr.probe_data.9:Ref;
var hdr.probe_data.9.bos:int;
var _old_header_hdr.probe_data.9.bos:int;
var hdr.probe_data.9.swid:int;
var _old_header_hdr.probe_data.9.swid:int;
var hdr.probe_data.9.port:int;
var _old_header_hdr.probe_data.9.port:int;
var hdr.probe_data.9.byte_cnt:int;
var _old_header_hdr.probe_data.9.byte_cnt:int;
var hdr.probe_data.9.last_time:time_t;
var _old_header_hdr.probe_data.9.last_time:time_t;
var hdr.probe_data.9.cur_time:time_t;
var _old_header_hdr.probe_data.9.cur_time:time_t;
const hdr.probe_fwd:HeaderStack;

// Header probe_fwd_t
var hdr.probe_fwd.last:Ref;
var hdr.probe_fwd.last.egress_spec:int;
var _old_header_hdr.probe_fwd.last.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.0:Ref;
var hdr.probe_fwd.0.egress_spec:int;
var _old_header_hdr.probe_fwd.0.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.1:Ref;
var hdr.probe_fwd.1.egress_spec:int;
var _old_header_hdr.probe_fwd.1.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.2:Ref;
var hdr.probe_fwd.2.egress_spec:int;
var _old_header_hdr.probe_fwd.2.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.3:Ref;
var hdr.probe_fwd.3.egress_spec:int;
var _old_header_hdr.probe_fwd.3.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.4:Ref;
var hdr.probe_fwd.4.egress_spec:int;
var _old_header_hdr.probe_fwd.4.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.5:Ref;
var hdr.probe_fwd.5.egress_spec:int;
var _old_header_hdr.probe_fwd.5.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.6:Ref;
var hdr.probe_fwd.6.egress_spec:int;
var _old_header_hdr.probe_fwd.6.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.7:Ref;
var hdr.probe_fwd.7.egress_spec:int;
var _old_header_hdr.probe_fwd.7.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.8:Ref;
var hdr.probe_fwd.8.egress_spec:int;
var _old_header_hdr.probe_fwd.8.egress_spec:int;

// Header probe_fwd_t
var hdr.probe_fwd.9:Ref;
var hdr.probe_fwd.9.egress_spec:int;
var _old_header_hdr.probe_fwd.9.egress_spec:int;
function {:inline true} add.bv8(left:int, right:int) : int{((left%power_2_8())+(right%power_2_8()))%power_2_8()}

// Table ipv4_lpm_0 Actionlist Declaration
type ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.ipv4_forward : ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.drop : ipv4_lpm_0.action;
var ipv4_lpm_0.action_run : ipv4_lpm_0.action;
var ipv4_lpm_0.hit : bool;
var byte_cnt_0:int;
var new_byte_cnt_0:int;
var last_time_0:time_t;
var cur_time_0:time_t;
var tmp:int;

// Register byte_cnt_reg_0
var byte_cnt_reg_0:[int]int;
const byte_cnt_reg_0.size:int;
axiom byte_cnt_reg_0.size == 8;

// Register last_time_reg_0
var last_time_reg_0:[int]time_t;
const last_time_reg_0.size:int;
axiom last_time_reg_0.size == 8;

// Table swid_0 Actionlist Declaration
type swid_0.action;
const unique swid_0.action.set_swid : swid_0.action;
var swid_0.action_run : swid_0.action;
var swid_0.hit : bool;
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

// Control MyComputeChecksum
procedure {:inline 1} MyComputeChecksum()
{
    // update_checksum
}

// Control MyEgress
procedure {:inline 1} MyEgress()
	modifies byte_cnt_0, byte_cnt_reg_0, cur_time_0, hdr.probe_data.0.bos, hdr.probe_data.0.byte_cnt, hdr.probe_data.0.cur_time, hdr.probe_data.0.last_time, hdr.probe_data.0.port, hdr.probe_data.0.swid, isValid, last_time_0, last_time_reg_0, new_byte_cnt_0, tmp;
{
    cur_time_0 := standard_metadata.egress_global_timestamp;
    // read
    byte_cnt_0 := byte_cnt_reg_0.read(byte_cnt_reg_0, standard_metadata.egress_port);
    byte_cnt_0 := (byte_cnt_0) + (standard_metadata.packet_length);
    if(isValid[hdr.probe]){
        tmp := 0;
    }
    else{
        tmp := byte_cnt_0;
    }
    new_byte_cnt_0 := tmp;
    // write
    call byte_cnt_reg_0.write(standard_metadata.egress_port, new_byte_cnt_0);
    if(isValid[hdr.probe]){
        // push_front
        call setValid(hdr.probe_data[0]);
        if((hdr.probe.hop_cnt == 1)){
            hdr.probe_data.0.bos := 1;
        }
        else{
            hdr.probe_data.0.bos := 0;
        }
        call swid_0.apply();
        hdr.probe_data.0.port := (standard_metadata.egress_port%power_2_8());
        hdr.probe_data.0.byte_cnt := byte_cnt_0;
        // read
        last_time_0 := last_time_reg_0.read(last_time_reg_0, standard_metadata.egress_port);
        // write
        call last_time_reg_0.write(standard_metadata.egress_port, cur_time_0);
        hdr.probe_data.0.last_time := last_time_0;
        hdr.probe_data.0.cur_time := cur_time_0;
    }
}

// Control MyIngress
procedure {:inline 1} MyIngress()
	modifies drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.dstAddr, hdr.ipv4.ttl, hdr.probe.hop_cnt, standard_metadata.egress_spec;
{
    if(isValid[hdr.ipv4]){
        call ipv4_lpm_0.apply();
    }
    else{
        if(isValid[hdr.probe]){
            standard_metadata.egress_spec := meta.egress_spec;
            forward := true;
            hdr.probe.hop_cnt := add.bv8(hdr.probe.hop_cnt, 1);
        }
    }
}

// Control MyVerifyChecksum
procedure {:inline 1} MyVerifyChecksum()
{
}

// Action NoAction_0
procedure {:inline 1} NoAction_0()
{
}

// Action NoAction_1
procedure {:inline 1} NoAction_1()
{
}
procedure ULTIMATE.start()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.probe.hop_cnt, _old_header_hdr.probe_data.0.bos, _old_header_hdr.probe_data.0.byte_cnt, _old_header_hdr.probe_data.0.cur_time, _old_header_hdr.probe_data.0.last_time, _old_header_hdr.probe_data.0.port, _old_header_hdr.probe_data.0.swid, _old_header_hdr.probe_data.1.bos, _old_header_hdr.probe_data.1.byte_cnt, _old_header_hdr.probe_data.1.cur_time, _old_header_hdr.probe_data.1.last_time, _old_header_hdr.probe_data.1.port, _old_header_hdr.probe_data.1.swid, _old_header_hdr.probe_data.2.bos, _old_header_hdr.probe_data.2.byte_cnt, _old_header_hdr.probe_data.2.cur_time, _old_header_hdr.probe_data.2.last_time, _old_header_hdr.probe_data.2.port, _old_header_hdr.probe_data.2.swid, _old_header_hdr.probe_data.3.bos, _old_header_hdr.probe_data.3.byte_cnt, _old_header_hdr.probe_data.3.cur_time, _old_header_hdr.probe_data.3.last_time, _old_header_hdr.probe_data.3.port, _old_header_hdr.probe_data.3.swid, _old_header_hdr.probe_data.4.bos, _old_header_hdr.probe_data.4.byte_cnt, _old_header_hdr.probe_data.4.cur_time, _old_header_hdr.probe_data.4.last_time, _old_header_hdr.probe_data.4.port, _old_header_hdr.probe_data.4.swid, _old_header_hdr.probe_data.5.bos, _old_header_hdr.probe_data.5.byte_cnt, _old_header_hdr.probe_data.5.cur_time, _old_header_hdr.probe_data.5.last_time, _old_header_hdr.probe_data.5.port, _old_header_hdr.probe_data.5.swid, _old_header_hdr.probe_data.6.bos, _old_header_hdr.probe_data.6.byte_cnt, _old_header_hdr.probe_data.6.cur_time, _old_header_hdr.probe_data.6.last_time, _old_header_hdr.probe_data.6.port, _old_header_hdr.probe_data.6.swid, _old_header_hdr.probe_data.7.bos, _old_header_hdr.probe_data.7.byte_cnt, _old_header_hdr.probe_data.7.cur_time, _old_header_hdr.probe_data.7.last_time, _old_header_hdr.probe_data.7.port, _old_header_hdr.probe_data.7.swid, _old_header_hdr.probe_data.8.bos, _old_header_hdr.probe_data.8.byte_cnt, _old_header_hdr.probe_data.8.cur_time, _old_header_hdr.probe_data.8.last_time, _old_header_hdr.probe_data.8.port, _old_header_hdr.probe_data.8.swid, _old_header_hdr.probe_data.9.bos, _old_header_hdr.probe_data.9.byte_cnt, _old_header_hdr.probe_data.9.cur_time, _old_header_hdr.probe_data.9.last_time, _old_header_hdr.probe_data.9.port, _old_header_hdr.probe_data.9.swid, _old_header_hdr.probe_data.last.bos, _old_header_hdr.probe_data.last.byte_cnt, _old_header_hdr.probe_data.last.cur_time, _old_header_hdr.probe_data.last.last_time, _old_header_hdr.probe_data.last.port, _old_header_hdr.probe_data.last.swid, _old_header_hdr.probe_fwd.0.egress_spec, _old_header_hdr.probe_fwd.1.egress_spec, _old_header_hdr.probe_fwd.2.egress_spec, _old_header_hdr.probe_fwd.3.egress_spec, _old_header_hdr.probe_fwd.4.egress_spec, _old_header_hdr.probe_fwd.5.egress_spec, _old_header_hdr.probe_fwd.6.egress_spec, _old_header_hdr.probe_fwd.7.egress_spec, _old_header_hdr.probe_fwd.8.egress_spec, _old_header_hdr.probe_fwd.9.egress_spec, _old_header_hdr.probe_fwd.last.egress_spec, byte_cnt_0, byte_cnt_reg_0, cur_time_0, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.probe.hop_cnt, hdr.probe_data.0.bos, hdr.probe_data.0.byte_cnt, hdr.probe_data.0.cur_time, hdr.probe_data.0.last_time, hdr.probe_data.0.port, hdr.probe_data.0.swid, hdr.probe_data.1.bos, hdr.probe_data.1.byte_cnt, hdr.probe_data.1.cur_time, hdr.probe_data.1.last_time, hdr.probe_data.1.port, hdr.probe_data.1.swid, hdr.probe_data.2.bos, hdr.probe_data.2.byte_cnt, hdr.probe_data.2.cur_time, hdr.probe_data.2.last_time, hdr.probe_data.2.port, hdr.probe_data.2.swid, hdr.probe_data.3.bos, hdr.probe_data.3.byte_cnt, hdr.probe_data.3.cur_time, hdr.probe_data.3.last_time, hdr.probe_data.3.port, hdr.probe_data.3.swid, hdr.probe_data.4.bos, hdr.probe_data.4.byte_cnt, hdr.probe_data.4.cur_time, hdr.probe_data.4.last_time, hdr.probe_data.4.port, hdr.probe_data.4.swid, hdr.probe_data.5.bos, hdr.probe_data.5.byte_cnt, hdr.probe_data.5.cur_time, hdr.probe_data.5.last_time, hdr.probe_data.5.port, hdr.probe_data.5.swid, hdr.probe_data.6.bos, hdr.probe_data.6.byte_cnt, hdr.probe_data.6.cur_time, hdr.probe_data.6.last_time, hdr.probe_data.6.port, hdr.probe_data.6.swid, hdr.probe_data.7.bos, hdr.probe_data.7.byte_cnt, hdr.probe_data.7.cur_time, hdr.probe_data.7.last_time, hdr.probe_data.7.port, hdr.probe_data.7.swid, hdr.probe_data.8.bos, hdr.probe_data.8.byte_cnt, hdr.probe_data.8.cur_time, hdr.probe_data.8.last_time, hdr.probe_data.8.port, hdr.probe_data.8.swid, hdr.probe_data.9.bos, hdr.probe_data.9.byte_cnt, hdr.probe_data.9.cur_time, hdr.probe_data.9.last_time, hdr.probe_data.9.port, hdr.probe_data.9.swid, hdr.probe_data.last.bos, hdr.probe_data.last.byte_cnt, hdr.probe_data.last.cur_time, hdr.probe_data.last.last_time, hdr.probe_data.last.port, hdr.probe_data.last.swid, hdr.probe_fwd.0.egress_spec, hdr.probe_fwd.1.egress_spec, hdr.probe_fwd.2.egress_spec, hdr.probe_fwd.3.egress_spec, hdr.probe_fwd.4.egress_spec, hdr.probe_fwd.5.egress_spec, hdr.probe_fwd.6.egress_spec, hdr.probe_fwd.7.egress_spec, hdr.probe_fwd.8.egress_spec, hdr.probe_fwd.9.egress_spec, hdr.probe_fwd.last.egress_spec, ipv4_lpm_0.action_run, isValid, last_time_0, last_time_reg_0, meta.egress_spec, meta.parser_metadata.remaining, new_byte_cnt_0, stack.index, standard_metadata.egress_spec, swid_0.action_run, tmp;
{
    call mainProcedure();
}

// Parser _parser_MyParser
procedure {:inline 1} _parser_MyParser()
	modifies drop, isValid, meta.egress_spec, meta.parser_metadata.remaining, stack.index;
{
    call start();
}
procedure {:inline 1} accept()
{
}
function byte_cnt_reg_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} byte_cnt_reg_0.write(index:int, value:int)
	modifies byte_cnt_reg_0;
{
    byte_cnt_reg_0[index] := value;
}
procedure clear_drop();
    ensures drop==false;
	modifies drop;
procedure clear_forward();
    ensures forward==false;
	modifies forward;

// Action drop
procedure {:inline 1} drop()
	modifies drop;
{
    call mark_to_drop();
}
procedure {:inline 1} havocProcedure()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.probe.hop_cnt, _old_header_hdr.probe_data.0.bos, _old_header_hdr.probe_data.0.byte_cnt, _old_header_hdr.probe_data.0.cur_time, _old_header_hdr.probe_data.0.last_time, _old_header_hdr.probe_data.0.port, _old_header_hdr.probe_data.0.swid, _old_header_hdr.probe_data.1.bos, _old_header_hdr.probe_data.1.byte_cnt, _old_header_hdr.probe_data.1.cur_time, _old_header_hdr.probe_data.1.last_time, _old_header_hdr.probe_data.1.port, _old_header_hdr.probe_data.1.swid, _old_header_hdr.probe_data.2.bos, _old_header_hdr.probe_data.2.byte_cnt, _old_header_hdr.probe_data.2.cur_time, _old_header_hdr.probe_data.2.last_time, _old_header_hdr.probe_data.2.port, _old_header_hdr.probe_data.2.swid, _old_header_hdr.probe_data.3.bos, _old_header_hdr.probe_data.3.byte_cnt, _old_header_hdr.probe_data.3.cur_time, _old_header_hdr.probe_data.3.last_time, _old_header_hdr.probe_data.3.port, _old_header_hdr.probe_data.3.swid, _old_header_hdr.probe_data.4.bos, _old_header_hdr.probe_data.4.byte_cnt, _old_header_hdr.probe_data.4.cur_time, _old_header_hdr.probe_data.4.last_time, _old_header_hdr.probe_data.4.port, _old_header_hdr.probe_data.4.swid, _old_header_hdr.probe_data.5.bos, _old_header_hdr.probe_data.5.byte_cnt, _old_header_hdr.probe_data.5.cur_time, _old_header_hdr.probe_data.5.last_time, _old_header_hdr.probe_data.5.port, _old_header_hdr.probe_data.5.swid, _old_header_hdr.probe_data.6.bos, _old_header_hdr.probe_data.6.byte_cnt, _old_header_hdr.probe_data.6.cur_time, _old_header_hdr.probe_data.6.last_time, _old_header_hdr.probe_data.6.port, _old_header_hdr.probe_data.6.swid, _old_header_hdr.probe_data.7.bos, _old_header_hdr.probe_data.7.byte_cnt, _old_header_hdr.probe_data.7.cur_time, _old_header_hdr.probe_data.7.last_time, _old_header_hdr.probe_data.7.port, _old_header_hdr.probe_data.7.swid, _old_header_hdr.probe_data.8.bos, _old_header_hdr.probe_data.8.byte_cnt, _old_header_hdr.probe_data.8.cur_time, _old_header_hdr.probe_data.8.last_time, _old_header_hdr.probe_data.8.port, _old_header_hdr.probe_data.8.swid, _old_header_hdr.probe_data.9.bos, _old_header_hdr.probe_data.9.byte_cnt, _old_header_hdr.probe_data.9.cur_time, _old_header_hdr.probe_data.9.last_time, _old_header_hdr.probe_data.9.port, _old_header_hdr.probe_data.9.swid, _old_header_hdr.probe_data.last.bos, _old_header_hdr.probe_data.last.byte_cnt, _old_header_hdr.probe_data.last.cur_time, _old_header_hdr.probe_data.last.last_time, _old_header_hdr.probe_data.last.port, _old_header_hdr.probe_data.last.swid, _old_header_hdr.probe_fwd.0.egress_spec, _old_header_hdr.probe_fwd.1.egress_spec, _old_header_hdr.probe_fwd.2.egress_spec, _old_header_hdr.probe_fwd.3.egress_spec, _old_header_hdr.probe_fwd.4.egress_spec, _old_header_hdr.probe_fwd.5.egress_spec, _old_header_hdr.probe_fwd.6.egress_spec, _old_header_hdr.probe_fwd.7.egress_spec, _old_header_hdr.probe_fwd.8.egress_spec, _old_header_hdr.probe_fwd.9.egress_spec, _old_header_hdr.probe_fwd.last.egress_spec, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.probe.hop_cnt, hdr.probe_data.0.bos, hdr.probe_data.0.byte_cnt, hdr.probe_data.0.cur_time, hdr.probe_data.0.last_time, hdr.probe_data.0.port, hdr.probe_data.0.swid, hdr.probe_data.1.bos, hdr.probe_data.1.byte_cnt, hdr.probe_data.1.cur_time, hdr.probe_data.1.last_time, hdr.probe_data.1.port, hdr.probe_data.1.swid, hdr.probe_data.2.bos, hdr.probe_data.2.byte_cnt, hdr.probe_data.2.cur_time, hdr.probe_data.2.last_time, hdr.probe_data.2.port, hdr.probe_data.2.swid, hdr.probe_data.3.bos, hdr.probe_data.3.byte_cnt, hdr.probe_data.3.cur_time, hdr.probe_data.3.last_time, hdr.probe_data.3.port, hdr.probe_data.3.swid, hdr.probe_data.4.bos, hdr.probe_data.4.byte_cnt, hdr.probe_data.4.cur_time, hdr.probe_data.4.last_time, hdr.probe_data.4.port, hdr.probe_data.4.swid, hdr.probe_data.5.bos, hdr.probe_data.5.byte_cnt, hdr.probe_data.5.cur_time, hdr.probe_data.5.last_time, hdr.probe_data.5.port, hdr.probe_data.5.swid, hdr.probe_data.6.bos, hdr.probe_data.6.byte_cnt, hdr.probe_data.6.cur_time, hdr.probe_data.6.last_time, hdr.probe_data.6.port, hdr.probe_data.6.swid, hdr.probe_data.7.bos, hdr.probe_data.7.byte_cnt, hdr.probe_data.7.cur_time, hdr.probe_data.7.last_time, hdr.probe_data.7.port, hdr.probe_data.7.swid, hdr.probe_data.8.bos, hdr.probe_data.8.byte_cnt, hdr.probe_data.8.cur_time, hdr.probe_data.8.last_time, hdr.probe_data.8.port, hdr.probe_data.8.swid, hdr.probe_data.9.bos, hdr.probe_data.9.byte_cnt, hdr.probe_data.9.cur_time, hdr.probe_data.9.last_time, hdr.probe_data.9.port, hdr.probe_data.9.swid, hdr.probe_data.last.bos, hdr.probe_data.last.byte_cnt, hdr.probe_data.last.cur_time, hdr.probe_data.last.last_time, hdr.probe_data.last.port, hdr.probe_data.last.swid, hdr.probe_fwd.0.egress_spec, hdr.probe_fwd.1.egress_spec, hdr.probe_fwd.2.egress_spec, hdr.probe_fwd.3.egress_spec, hdr.probe_fwd.4.egress_spec, hdr.probe_fwd.5.egress_spec, hdr.probe_fwd.6.egress_spec, hdr.probe_fwd.7.egress_spec, hdr.probe_fwd.8.egress_spec, hdr.probe_fwd.9.egress_spec, hdr.probe_fwd.last.egress_spec, isValid;
{
    isValid[hdr.ethernet] := false;
    emit[hdr.ethernet] := false;
    havoc hdr.ethernet.dstAddr;
    _old_header_hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;
    havoc hdr.ethernet.srcAddr;
    _old_header_hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;
    havoc hdr.ethernet.etherType;
    assume(0 <= hdr.ethernet.etherType && hdr.ethernet.etherType <= power_2_16() );
    _old_header_hdr.ethernet.etherType := hdr.ethernet.etherType;
    isValid[hdr.ipv4] := false;
    emit[hdr.ipv4] := false;
    havoc hdr.ipv4.version;
    assume(0 <= hdr.ipv4.version && hdr.ipv4.version <= power_2_4() );
    _old_header_hdr.ipv4.version := hdr.ipv4.version;
    havoc hdr.ipv4.ihl;
    assume(0 <= hdr.ipv4.ihl && hdr.ipv4.ihl <= power_2_4() );
    _old_header_hdr.ipv4.ihl := hdr.ipv4.ihl;
    havoc hdr.ipv4.diffserv;
    assume(0 <= hdr.ipv4.diffserv && hdr.ipv4.diffserv <= power_2_8() );
    _old_header_hdr.ipv4.diffserv := hdr.ipv4.diffserv;
    havoc hdr.ipv4.totalLen;
    assume(0 <= hdr.ipv4.totalLen && hdr.ipv4.totalLen <= power_2_16() );
    _old_header_hdr.ipv4.totalLen := hdr.ipv4.totalLen;
    havoc hdr.ipv4.identification;
    assume(0 <= hdr.ipv4.identification && hdr.ipv4.identification <= power_2_16() );
    _old_header_hdr.ipv4.identification := hdr.ipv4.identification;
    havoc hdr.ipv4.flags;
    assume(0 <= hdr.ipv4.flags && hdr.ipv4.flags <= power_2_3() );
    _old_header_hdr.ipv4.flags := hdr.ipv4.flags;
    havoc hdr.ipv4.fragOffset;
    assume(0 <= hdr.ipv4.fragOffset && hdr.ipv4.fragOffset <= power_2_13() );
    _old_header_hdr.ipv4.fragOffset := hdr.ipv4.fragOffset;
    havoc hdr.ipv4.ttl;
    assume(0 <= hdr.ipv4.ttl && hdr.ipv4.ttl <= power_2_8() );
    _old_header_hdr.ipv4.ttl := hdr.ipv4.ttl;
    havoc hdr.ipv4.protocol;
    assume(0 <= hdr.ipv4.protocol && hdr.ipv4.protocol <= power_2_8() );
    _old_header_hdr.ipv4.protocol := hdr.ipv4.protocol;
    havoc hdr.ipv4.hdrChecksum;
    assume(0 <= hdr.ipv4.hdrChecksum && hdr.ipv4.hdrChecksum <= power_2_16() );
    _old_header_hdr.ipv4.hdrChecksum := hdr.ipv4.hdrChecksum;
    havoc hdr.ipv4.srcAddr;
    _old_header_hdr.ipv4.srcAddr := hdr.ipv4.srcAddr;
    havoc hdr.ipv4.dstAddr;
    _old_header_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    isValid[hdr.probe] := false;
    emit[hdr.probe] := false;
    havoc hdr.probe.hop_cnt;
    assume(0 <= hdr.probe.hop_cnt && hdr.probe.hop_cnt <= power_2_8() );
    _old_header_hdr.probe.hop_cnt := hdr.probe.hop_cnt;
    isValid[hdr.probe_data.last] := false;
    emit[hdr.probe_data.last] := false;
    havoc hdr.probe_data.last.bos;
    assume(0 <= hdr.probe_data.last.bos && hdr.probe_data.last.bos <= power_2_1() );
    _old_header_hdr.probe_data.last.bos := hdr.probe_data.last.bos;
    havoc hdr.probe_data.last.swid;
    assume(0 <= hdr.probe_data.last.swid && hdr.probe_data.last.swid <= power_2_7() );
    _old_header_hdr.probe_data.last.swid := hdr.probe_data.last.swid;
    havoc hdr.probe_data.last.port;
    assume(0 <= hdr.probe_data.last.port && hdr.probe_data.last.port <= power_2_8() );
    _old_header_hdr.probe_data.last.port := hdr.probe_data.last.port;
    havoc hdr.probe_data.last.byte_cnt;
    assume(0 <= hdr.probe_data.last.byte_cnt && hdr.probe_data.last.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.last.byte_cnt := hdr.probe_data.last.byte_cnt;
    havoc hdr.probe_data.last.last_time;
    _old_header_hdr.probe_data.last.last_time := hdr.probe_data.last.last_time;
    havoc hdr.probe_data.last.cur_time;
    _old_header_hdr.probe_data.last.cur_time := hdr.probe_data.last.cur_time;
    isValid[hdr.probe_data.0] := false;
    emit[hdr.probe_data.0] := false;
    havoc hdr.probe_data.0.bos;
    assume(0 <= hdr.probe_data.0.bos && hdr.probe_data.0.bos <= power_2_1() );
    _old_header_hdr.probe_data.0.bos := hdr.probe_data.0.bos;
    havoc hdr.probe_data.0.swid;
    assume(0 <= hdr.probe_data.0.swid && hdr.probe_data.0.swid <= power_2_7() );
    _old_header_hdr.probe_data.0.swid := hdr.probe_data.0.swid;
    havoc hdr.probe_data.0.port;
    assume(0 <= hdr.probe_data.0.port && hdr.probe_data.0.port <= power_2_8() );
    _old_header_hdr.probe_data.0.port := hdr.probe_data.0.port;
    havoc hdr.probe_data.0.byte_cnt;
    assume(0 <= hdr.probe_data.0.byte_cnt && hdr.probe_data.0.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.0.byte_cnt := hdr.probe_data.0.byte_cnt;
    havoc hdr.probe_data.0.last_time;
    _old_header_hdr.probe_data.0.last_time := hdr.probe_data.0.last_time;
    havoc hdr.probe_data.0.cur_time;
    _old_header_hdr.probe_data.0.cur_time := hdr.probe_data.0.cur_time;
    isValid[hdr.probe_data.1] := false;
    emit[hdr.probe_data.1] := false;
    havoc hdr.probe_data.1.bos;
    assume(0 <= hdr.probe_data.1.bos && hdr.probe_data.1.bos <= power_2_1() );
    _old_header_hdr.probe_data.1.bos := hdr.probe_data.1.bos;
    havoc hdr.probe_data.1.swid;
    assume(0 <= hdr.probe_data.1.swid && hdr.probe_data.1.swid <= power_2_7() );
    _old_header_hdr.probe_data.1.swid := hdr.probe_data.1.swid;
    havoc hdr.probe_data.1.port;
    assume(0 <= hdr.probe_data.1.port && hdr.probe_data.1.port <= power_2_8() );
    _old_header_hdr.probe_data.1.port := hdr.probe_data.1.port;
    havoc hdr.probe_data.1.byte_cnt;
    assume(0 <= hdr.probe_data.1.byte_cnt && hdr.probe_data.1.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.1.byte_cnt := hdr.probe_data.1.byte_cnt;
    havoc hdr.probe_data.1.last_time;
    _old_header_hdr.probe_data.1.last_time := hdr.probe_data.1.last_time;
    havoc hdr.probe_data.1.cur_time;
    _old_header_hdr.probe_data.1.cur_time := hdr.probe_data.1.cur_time;
    isValid[hdr.probe_data.2] := false;
    emit[hdr.probe_data.2] := false;
    havoc hdr.probe_data.2.bos;
    assume(0 <= hdr.probe_data.2.bos && hdr.probe_data.2.bos <= power_2_1() );
    _old_header_hdr.probe_data.2.bos := hdr.probe_data.2.bos;
    havoc hdr.probe_data.2.swid;
    assume(0 <= hdr.probe_data.2.swid && hdr.probe_data.2.swid <= power_2_7() );
    _old_header_hdr.probe_data.2.swid := hdr.probe_data.2.swid;
    havoc hdr.probe_data.2.port;
    assume(0 <= hdr.probe_data.2.port && hdr.probe_data.2.port <= power_2_8() );
    _old_header_hdr.probe_data.2.port := hdr.probe_data.2.port;
    havoc hdr.probe_data.2.byte_cnt;
    assume(0 <= hdr.probe_data.2.byte_cnt && hdr.probe_data.2.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.2.byte_cnt := hdr.probe_data.2.byte_cnt;
    havoc hdr.probe_data.2.last_time;
    _old_header_hdr.probe_data.2.last_time := hdr.probe_data.2.last_time;
    havoc hdr.probe_data.2.cur_time;
    _old_header_hdr.probe_data.2.cur_time := hdr.probe_data.2.cur_time;
    isValid[hdr.probe_data.3] := false;
    emit[hdr.probe_data.3] := false;
    havoc hdr.probe_data.3.bos;
    assume(0 <= hdr.probe_data.3.bos && hdr.probe_data.3.bos <= power_2_1() );
    _old_header_hdr.probe_data.3.bos := hdr.probe_data.3.bos;
    havoc hdr.probe_data.3.swid;
    assume(0 <= hdr.probe_data.3.swid && hdr.probe_data.3.swid <= power_2_7() );
    _old_header_hdr.probe_data.3.swid := hdr.probe_data.3.swid;
    havoc hdr.probe_data.3.port;
    assume(0 <= hdr.probe_data.3.port && hdr.probe_data.3.port <= power_2_8() );
    _old_header_hdr.probe_data.3.port := hdr.probe_data.3.port;
    havoc hdr.probe_data.3.byte_cnt;
    assume(0 <= hdr.probe_data.3.byte_cnt && hdr.probe_data.3.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.3.byte_cnt := hdr.probe_data.3.byte_cnt;
    havoc hdr.probe_data.3.last_time;
    _old_header_hdr.probe_data.3.last_time := hdr.probe_data.3.last_time;
    havoc hdr.probe_data.3.cur_time;
    _old_header_hdr.probe_data.3.cur_time := hdr.probe_data.3.cur_time;
    isValid[hdr.probe_data.4] := false;
    emit[hdr.probe_data.4] := false;
    havoc hdr.probe_data.4.bos;
    assume(0 <= hdr.probe_data.4.bos && hdr.probe_data.4.bos <= power_2_1() );
    _old_header_hdr.probe_data.4.bos := hdr.probe_data.4.bos;
    havoc hdr.probe_data.4.swid;
    assume(0 <= hdr.probe_data.4.swid && hdr.probe_data.4.swid <= power_2_7() );
    _old_header_hdr.probe_data.4.swid := hdr.probe_data.4.swid;
    havoc hdr.probe_data.4.port;
    assume(0 <= hdr.probe_data.4.port && hdr.probe_data.4.port <= power_2_8() );
    _old_header_hdr.probe_data.4.port := hdr.probe_data.4.port;
    havoc hdr.probe_data.4.byte_cnt;
    assume(0 <= hdr.probe_data.4.byte_cnt && hdr.probe_data.4.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.4.byte_cnt := hdr.probe_data.4.byte_cnt;
    havoc hdr.probe_data.4.last_time;
    _old_header_hdr.probe_data.4.last_time := hdr.probe_data.4.last_time;
    havoc hdr.probe_data.4.cur_time;
    _old_header_hdr.probe_data.4.cur_time := hdr.probe_data.4.cur_time;
    isValid[hdr.probe_data.5] := false;
    emit[hdr.probe_data.5] := false;
    havoc hdr.probe_data.5.bos;
    assume(0 <= hdr.probe_data.5.bos && hdr.probe_data.5.bos <= power_2_1() );
    _old_header_hdr.probe_data.5.bos := hdr.probe_data.5.bos;
    havoc hdr.probe_data.5.swid;
    assume(0 <= hdr.probe_data.5.swid && hdr.probe_data.5.swid <= power_2_7() );
    _old_header_hdr.probe_data.5.swid := hdr.probe_data.5.swid;
    havoc hdr.probe_data.5.port;
    assume(0 <= hdr.probe_data.5.port && hdr.probe_data.5.port <= power_2_8() );
    _old_header_hdr.probe_data.5.port := hdr.probe_data.5.port;
    havoc hdr.probe_data.5.byte_cnt;
    assume(0 <= hdr.probe_data.5.byte_cnt && hdr.probe_data.5.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.5.byte_cnt := hdr.probe_data.5.byte_cnt;
    havoc hdr.probe_data.5.last_time;
    _old_header_hdr.probe_data.5.last_time := hdr.probe_data.5.last_time;
    havoc hdr.probe_data.5.cur_time;
    _old_header_hdr.probe_data.5.cur_time := hdr.probe_data.5.cur_time;
    isValid[hdr.probe_data.6] := false;
    emit[hdr.probe_data.6] := false;
    havoc hdr.probe_data.6.bos;
    assume(0 <= hdr.probe_data.6.bos && hdr.probe_data.6.bos <= power_2_1() );
    _old_header_hdr.probe_data.6.bos := hdr.probe_data.6.bos;
    havoc hdr.probe_data.6.swid;
    assume(0 <= hdr.probe_data.6.swid && hdr.probe_data.6.swid <= power_2_7() );
    _old_header_hdr.probe_data.6.swid := hdr.probe_data.6.swid;
    havoc hdr.probe_data.6.port;
    assume(0 <= hdr.probe_data.6.port && hdr.probe_data.6.port <= power_2_8() );
    _old_header_hdr.probe_data.6.port := hdr.probe_data.6.port;
    havoc hdr.probe_data.6.byte_cnt;
    assume(0 <= hdr.probe_data.6.byte_cnt && hdr.probe_data.6.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.6.byte_cnt := hdr.probe_data.6.byte_cnt;
    havoc hdr.probe_data.6.last_time;
    _old_header_hdr.probe_data.6.last_time := hdr.probe_data.6.last_time;
    havoc hdr.probe_data.6.cur_time;
    _old_header_hdr.probe_data.6.cur_time := hdr.probe_data.6.cur_time;
    isValid[hdr.probe_data.7] := false;
    emit[hdr.probe_data.7] := false;
    havoc hdr.probe_data.7.bos;
    assume(0 <= hdr.probe_data.7.bos && hdr.probe_data.7.bos <= power_2_1() );
    _old_header_hdr.probe_data.7.bos := hdr.probe_data.7.bos;
    havoc hdr.probe_data.7.swid;
    assume(0 <= hdr.probe_data.7.swid && hdr.probe_data.7.swid <= power_2_7() );
    _old_header_hdr.probe_data.7.swid := hdr.probe_data.7.swid;
    havoc hdr.probe_data.7.port;
    assume(0 <= hdr.probe_data.7.port && hdr.probe_data.7.port <= power_2_8() );
    _old_header_hdr.probe_data.7.port := hdr.probe_data.7.port;
    havoc hdr.probe_data.7.byte_cnt;
    assume(0 <= hdr.probe_data.7.byte_cnt && hdr.probe_data.7.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.7.byte_cnt := hdr.probe_data.7.byte_cnt;
    havoc hdr.probe_data.7.last_time;
    _old_header_hdr.probe_data.7.last_time := hdr.probe_data.7.last_time;
    havoc hdr.probe_data.7.cur_time;
    _old_header_hdr.probe_data.7.cur_time := hdr.probe_data.7.cur_time;
    isValid[hdr.probe_data.8] := false;
    emit[hdr.probe_data.8] := false;
    havoc hdr.probe_data.8.bos;
    assume(0 <= hdr.probe_data.8.bos && hdr.probe_data.8.bos <= power_2_1() );
    _old_header_hdr.probe_data.8.bos := hdr.probe_data.8.bos;
    havoc hdr.probe_data.8.swid;
    assume(0 <= hdr.probe_data.8.swid && hdr.probe_data.8.swid <= power_2_7() );
    _old_header_hdr.probe_data.8.swid := hdr.probe_data.8.swid;
    havoc hdr.probe_data.8.port;
    assume(0 <= hdr.probe_data.8.port && hdr.probe_data.8.port <= power_2_8() );
    _old_header_hdr.probe_data.8.port := hdr.probe_data.8.port;
    havoc hdr.probe_data.8.byte_cnt;
    assume(0 <= hdr.probe_data.8.byte_cnt && hdr.probe_data.8.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.8.byte_cnt := hdr.probe_data.8.byte_cnt;
    havoc hdr.probe_data.8.last_time;
    _old_header_hdr.probe_data.8.last_time := hdr.probe_data.8.last_time;
    havoc hdr.probe_data.8.cur_time;
    _old_header_hdr.probe_data.8.cur_time := hdr.probe_data.8.cur_time;
    isValid[hdr.probe_data.9] := false;
    emit[hdr.probe_data.9] := false;
    havoc hdr.probe_data.9.bos;
    assume(0 <= hdr.probe_data.9.bos && hdr.probe_data.9.bos <= power_2_1() );
    _old_header_hdr.probe_data.9.bos := hdr.probe_data.9.bos;
    havoc hdr.probe_data.9.swid;
    assume(0 <= hdr.probe_data.9.swid && hdr.probe_data.9.swid <= power_2_7() );
    _old_header_hdr.probe_data.9.swid := hdr.probe_data.9.swid;
    havoc hdr.probe_data.9.port;
    assume(0 <= hdr.probe_data.9.port && hdr.probe_data.9.port <= power_2_8() );
    _old_header_hdr.probe_data.9.port := hdr.probe_data.9.port;
    havoc hdr.probe_data.9.byte_cnt;
    assume(0 <= hdr.probe_data.9.byte_cnt && hdr.probe_data.9.byte_cnt <= power_2_32() );
    _old_header_hdr.probe_data.9.byte_cnt := hdr.probe_data.9.byte_cnt;
    havoc hdr.probe_data.9.last_time;
    _old_header_hdr.probe_data.9.last_time := hdr.probe_data.9.last_time;
    havoc hdr.probe_data.9.cur_time;
    _old_header_hdr.probe_data.9.cur_time := hdr.probe_data.9.cur_time;
    isValid[hdr.probe_fwd.last] := false;
    emit[hdr.probe_fwd.last] := false;
    havoc hdr.probe_fwd.last.egress_spec;
    assume(0 <= hdr.probe_fwd.last.egress_spec && hdr.probe_fwd.last.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.last.egress_spec := hdr.probe_fwd.last.egress_spec;
    isValid[hdr.probe_fwd.0] := false;
    emit[hdr.probe_fwd.0] := false;
    havoc hdr.probe_fwd.0.egress_spec;
    assume(0 <= hdr.probe_fwd.0.egress_spec && hdr.probe_fwd.0.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.0.egress_spec := hdr.probe_fwd.0.egress_spec;
    isValid[hdr.probe_fwd.1] := false;
    emit[hdr.probe_fwd.1] := false;
    havoc hdr.probe_fwd.1.egress_spec;
    assume(0 <= hdr.probe_fwd.1.egress_spec && hdr.probe_fwd.1.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.1.egress_spec := hdr.probe_fwd.1.egress_spec;
    isValid[hdr.probe_fwd.2] := false;
    emit[hdr.probe_fwd.2] := false;
    havoc hdr.probe_fwd.2.egress_spec;
    assume(0 <= hdr.probe_fwd.2.egress_spec && hdr.probe_fwd.2.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.2.egress_spec := hdr.probe_fwd.2.egress_spec;
    isValid[hdr.probe_fwd.3] := false;
    emit[hdr.probe_fwd.3] := false;
    havoc hdr.probe_fwd.3.egress_spec;
    assume(0 <= hdr.probe_fwd.3.egress_spec && hdr.probe_fwd.3.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.3.egress_spec := hdr.probe_fwd.3.egress_spec;
    isValid[hdr.probe_fwd.4] := false;
    emit[hdr.probe_fwd.4] := false;
    havoc hdr.probe_fwd.4.egress_spec;
    assume(0 <= hdr.probe_fwd.4.egress_spec && hdr.probe_fwd.4.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.4.egress_spec := hdr.probe_fwd.4.egress_spec;
    isValid[hdr.probe_fwd.5] := false;
    emit[hdr.probe_fwd.5] := false;
    havoc hdr.probe_fwd.5.egress_spec;
    assume(0 <= hdr.probe_fwd.5.egress_spec && hdr.probe_fwd.5.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.5.egress_spec := hdr.probe_fwd.5.egress_spec;
    isValid[hdr.probe_fwd.6] := false;
    emit[hdr.probe_fwd.6] := false;
    havoc hdr.probe_fwd.6.egress_spec;
    assume(0 <= hdr.probe_fwd.6.egress_spec && hdr.probe_fwd.6.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.6.egress_spec := hdr.probe_fwd.6.egress_spec;
    isValid[hdr.probe_fwd.7] := false;
    emit[hdr.probe_fwd.7] := false;
    havoc hdr.probe_fwd.7.egress_spec;
    assume(0 <= hdr.probe_fwd.7.egress_spec && hdr.probe_fwd.7.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.7.egress_spec := hdr.probe_fwd.7.egress_spec;
    isValid[hdr.probe_fwd.8] := false;
    emit[hdr.probe_fwd.8] := false;
    havoc hdr.probe_fwd.8.egress_spec;
    assume(0 <= hdr.probe_fwd.8.egress_spec && hdr.probe_fwd.8.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.8.egress_spec := hdr.probe_fwd.8.egress_spec;
    isValid[hdr.probe_fwd.9] := false;
    emit[hdr.probe_fwd.9] := false;
    havoc hdr.probe_fwd.9.egress_spec;
    assume(0 <= hdr.probe_fwd.9.egress_spec && hdr.probe_fwd.9.egress_spec <= power_2_8() );
    _old_header_hdr.probe_fwd.9.egress_spec := hdr.probe_fwd.9.egress_spec;
}

// Action ipv4_forward
procedure {:inline 1} ipv4_forward(dstAddr:macAddr_t, port:egressSpec_t)
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.ttl, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := port;
    forward := true;
    hdr.ethernet.srcAddr := hdr.ethernet.dstAddr;
    hdr.ethernet.dstAddr := dstAddr;
    hdr.ipv4.ttl := add.bv8(hdr.ipv4.ttl, 255);
}

procedure ipv4_lpm_0.action_run.limit();
    ensures(ipv4_lpm_0.action_run==ipv4_lpm_0.action.ipv4_forward || ipv4_lpm_0.action_run==ipv4_lpm_0.action.drop);
	modifies ipv4_lpm_0.action_run;

// Table ipv4_lpm_0
procedure {:inline 1} ipv4_lpm_0.apply()
	modifies drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.dstAddr, hdr.ipv4.ttl, standard_metadata.egress_spec;
{
    var ipv4_forward.port:egressSpec_t;
    var ipv4_forward.dstAddr:macAddr_t;
    hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;

    call ipv4_lpm_0.apply_table_entry();

    action_ipv4_forward:
    if(ipv4_lpm_0.action_run == ipv4_lpm_0.action.ipv4_forward){
        call ipv4_forward(ipv4_forward.dstAddr, ipv4_forward.port);
    }

    action_drop:
    if(ipv4_lpm_0.action_run == ipv4_lpm_0.action.drop){
        call drop();
    }
}

// Table Entry ipv4_lpm_0.apply_table_entry
procedure ipv4_lpm_0.apply_table_entry();

// Table Exit ipv4_lpm_0.apply_table_exit
procedure ipv4_lpm_0.apply_table_exit();
function last_time_reg_0.read(reg:[int]time_t, index:int)returns (time_t) {reg[index]}
procedure {:inline 1} last_time_reg_0.write(index:int, value:time_t)
	modifies last_time_reg_0;
{
    last_time_reg_0[index] := value;
}
procedure {:inline 1} main()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.probe.hop_cnt, _old_header_hdr.probe_data.0.bos, _old_header_hdr.probe_data.0.byte_cnt, _old_header_hdr.probe_data.0.cur_time, _old_header_hdr.probe_data.0.last_time, _old_header_hdr.probe_data.0.port, _old_header_hdr.probe_data.0.swid, _old_header_hdr.probe_data.1.bos, _old_header_hdr.probe_data.1.byte_cnt, _old_header_hdr.probe_data.1.cur_time, _old_header_hdr.probe_data.1.last_time, _old_header_hdr.probe_data.1.port, _old_header_hdr.probe_data.1.swid, _old_header_hdr.probe_data.2.bos, _old_header_hdr.probe_data.2.byte_cnt, _old_header_hdr.probe_data.2.cur_time, _old_header_hdr.probe_data.2.last_time, _old_header_hdr.probe_data.2.port, _old_header_hdr.probe_data.2.swid, _old_header_hdr.probe_data.3.bos, _old_header_hdr.probe_data.3.byte_cnt, _old_header_hdr.probe_data.3.cur_time, _old_header_hdr.probe_data.3.last_time, _old_header_hdr.probe_data.3.port, _old_header_hdr.probe_data.3.swid, _old_header_hdr.probe_data.4.bos, _old_header_hdr.probe_data.4.byte_cnt, _old_header_hdr.probe_data.4.cur_time, _old_header_hdr.probe_data.4.last_time, _old_header_hdr.probe_data.4.port, _old_header_hdr.probe_data.4.swid, _old_header_hdr.probe_data.5.bos, _old_header_hdr.probe_data.5.byte_cnt, _old_header_hdr.probe_data.5.cur_time, _old_header_hdr.probe_data.5.last_time, _old_header_hdr.probe_data.5.port, _old_header_hdr.probe_data.5.swid, _old_header_hdr.probe_data.6.bos, _old_header_hdr.probe_data.6.byte_cnt, _old_header_hdr.probe_data.6.cur_time, _old_header_hdr.probe_data.6.last_time, _old_header_hdr.probe_data.6.port, _old_header_hdr.probe_data.6.swid, _old_header_hdr.probe_data.7.bos, _old_header_hdr.probe_data.7.byte_cnt, _old_header_hdr.probe_data.7.cur_time, _old_header_hdr.probe_data.7.last_time, _old_header_hdr.probe_data.7.port, _old_header_hdr.probe_data.7.swid, _old_header_hdr.probe_data.8.bos, _old_header_hdr.probe_data.8.byte_cnt, _old_header_hdr.probe_data.8.cur_time, _old_header_hdr.probe_data.8.last_time, _old_header_hdr.probe_data.8.port, _old_header_hdr.probe_data.8.swid, _old_header_hdr.probe_data.9.bos, _old_header_hdr.probe_data.9.byte_cnt, _old_header_hdr.probe_data.9.cur_time, _old_header_hdr.probe_data.9.last_time, _old_header_hdr.probe_data.9.port, _old_header_hdr.probe_data.9.swid, _old_header_hdr.probe_data.last.bos, _old_header_hdr.probe_data.last.byte_cnt, _old_header_hdr.probe_data.last.cur_time, _old_header_hdr.probe_data.last.last_time, _old_header_hdr.probe_data.last.port, _old_header_hdr.probe_data.last.swid, _old_header_hdr.probe_fwd.0.egress_spec, _old_header_hdr.probe_fwd.1.egress_spec, _old_header_hdr.probe_fwd.2.egress_spec, _old_header_hdr.probe_fwd.3.egress_spec, _old_header_hdr.probe_fwd.4.egress_spec, _old_header_hdr.probe_fwd.5.egress_spec, _old_header_hdr.probe_fwd.6.egress_spec, _old_header_hdr.probe_fwd.7.egress_spec, _old_header_hdr.probe_fwd.8.egress_spec, _old_header_hdr.probe_fwd.9.egress_spec, _old_header_hdr.probe_fwd.last.egress_spec, byte_cnt_0, byte_cnt_reg_0, cur_time_0, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.probe.hop_cnt, hdr.probe_data.0.bos, hdr.probe_data.0.byte_cnt, hdr.probe_data.0.cur_time, hdr.probe_data.0.last_time, hdr.probe_data.0.port, hdr.probe_data.0.swid, hdr.probe_data.1.bos, hdr.probe_data.1.byte_cnt, hdr.probe_data.1.cur_time, hdr.probe_data.1.last_time, hdr.probe_data.1.port, hdr.probe_data.1.swid, hdr.probe_data.2.bos, hdr.probe_data.2.byte_cnt, hdr.probe_data.2.cur_time, hdr.probe_data.2.last_time, hdr.probe_data.2.port, hdr.probe_data.2.swid, hdr.probe_data.3.bos, hdr.probe_data.3.byte_cnt, hdr.probe_data.3.cur_time, hdr.probe_data.3.last_time, hdr.probe_data.3.port, hdr.probe_data.3.swid, hdr.probe_data.4.bos, hdr.probe_data.4.byte_cnt, hdr.probe_data.4.cur_time, hdr.probe_data.4.last_time, hdr.probe_data.4.port, hdr.probe_data.4.swid, hdr.probe_data.5.bos, hdr.probe_data.5.byte_cnt, hdr.probe_data.5.cur_time, hdr.probe_data.5.last_time, hdr.probe_data.5.port, hdr.probe_data.5.swid, hdr.probe_data.6.bos, hdr.probe_data.6.byte_cnt, hdr.probe_data.6.cur_time, hdr.probe_data.6.last_time, hdr.probe_data.6.port, hdr.probe_data.6.swid, hdr.probe_data.7.bos, hdr.probe_data.7.byte_cnt, hdr.probe_data.7.cur_time, hdr.probe_data.7.last_time, hdr.probe_data.7.port, hdr.probe_data.7.swid, hdr.probe_data.8.bos, hdr.probe_data.8.byte_cnt, hdr.probe_data.8.cur_time, hdr.probe_data.8.last_time, hdr.probe_data.8.port, hdr.probe_data.8.swid, hdr.probe_data.9.bos, hdr.probe_data.9.byte_cnt, hdr.probe_data.9.cur_time, hdr.probe_data.9.last_time, hdr.probe_data.9.port, hdr.probe_data.9.swid, hdr.probe_data.last.bos, hdr.probe_data.last.byte_cnt, hdr.probe_data.last.cur_time, hdr.probe_data.last.last_time, hdr.probe_data.last.port, hdr.probe_data.last.swid, hdr.probe_fwd.0.egress_spec, hdr.probe_fwd.1.egress_spec, hdr.probe_fwd.2.egress_spec, hdr.probe_fwd.3.egress_spec, hdr.probe_fwd.4.egress_spec, hdr.probe_fwd.5.egress_spec, hdr.probe_fwd.6.egress_spec, hdr.probe_fwd.7.egress_spec, hdr.probe_fwd.8.egress_spec, hdr.probe_fwd.9.egress_spec, hdr.probe_fwd.last.egress_spec, isValid, last_time_0, last_time_reg_0, meta.egress_spec, meta.parser_metadata.remaining, new_byte_cnt_0, stack.index, standard_metadata.egress_spec, tmp;
{
    call havocProcedure();
    call clear_drop();
    call clear_forward();
    call _parser_MyParser();
    call MyVerifyChecksum();
    call MyIngress();
    call MyEgress();
    call MyComputeChecksum();
}
procedure mainProcedure()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.probe.hop_cnt, _old_header_hdr.probe_data.0.bos, _old_header_hdr.probe_data.0.byte_cnt, _old_header_hdr.probe_data.0.cur_time, _old_header_hdr.probe_data.0.last_time, _old_header_hdr.probe_data.0.port, _old_header_hdr.probe_data.0.swid, _old_header_hdr.probe_data.1.bos, _old_header_hdr.probe_data.1.byte_cnt, _old_header_hdr.probe_data.1.cur_time, _old_header_hdr.probe_data.1.last_time, _old_header_hdr.probe_data.1.port, _old_header_hdr.probe_data.1.swid, _old_header_hdr.probe_data.2.bos, _old_header_hdr.probe_data.2.byte_cnt, _old_header_hdr.probe_data.2.cur_time, _old_header_hdr.probe_data.2.last_time, _old_header_hdr.probe_data.2.port, _old_header_hdr.probe_data.2.swid, _old_header_hdr.probe_data.3.bos, _old_header_hdr.probe_data.3.byte_cnt, _old_header_hdr.probe_data.3.cur_time, _old_header_hdr.probe_data.3.last_time, _old_header_hdr.probe_data.3.port, _old_header_hdr.probe_data.3.swid, _old_header_hdr.probe_data.4.bos, _old_header_hdr.probe_data.4.byte_cnt, _old_header_hdr.probe_data.4.cur_time, _old_header_hdr.probe_data.4.last_time, _old_header_hdr.probe_data.4.port, _old_header_hdr.probe_data.4.swid, _old_header_hdr.probe_data.5.bos, _old_header_hdr.probe_data.5.byte_cnt, _old_header_hdr.probe_data.5.cur_time, _old_header_hdr.probe_data.5.last_time, _old_header_hdr.probe_data.5.port, _old_header_hdr.probe_data.5.swid, _old_header_hdr.probe_data.6.bos, _old_header_hdr.probe_data.6.byte_cnt, _old_header_hdr.probe_data.6.cur_time, _old_header_hdr.probe_data.6.last_time, _old_header_hdr.probe_data.6.port, _old_header_hdr.probe_data.6.swid, _old_header_hdr.probe_data.7.bos, _old_header_hdr.probe_data.7.byte_cnt, _old_header_hdr.probe_data.7.cur_time, _old_header_hdr.probe_data.7.last_time, _old_header_hdr.probe_data.7.port, _old_header_hdr.probe_data.7.swid, _old_header_hdr.probe_data.8.bos, _old_header_hdr.probe_data.8.byte_cnt, _old_header_hdr.probe_data.8.cur_time, _old_header_hdr.probe_data.8.last_time, _old_header_hdr.probe_data.8.port, _old_header_hdr.probe_data.8.swid, _old_header_hdr.probe_data.9.bos, _old_header_hdr.probe_data.9.byte_cnt, _old_header_hdr.probe_data.9.cur_time, _old_header_hdr.probe_data.9.last_time, _old_header_hdr.probe_data.9.port, _old_header_hdr.probe_data.9.swid, _old_header_hdr.probe_data.last.bos, _old_header_hdr.probe_data.last.byte_cnt, _old_header_hdr.probe_data.last.cur_time, _old_header_hdr.probe_data.last.last_time, _old_header_hdr.probe_data.last.port, _old_header_hdr.probe_data.last.swid, _old_header_hdr.probe_fwd.0.egress_spec, _old_header_hdr.probe_fwd.1.egress_spec, _old_header_hdr.probe_fwd.2.egress_spec, _old_header_hdr.probe_fwd.3.egress_spec, _old_header_hdr.probe_fwd.4.egress_spec, _old_header_hdr.probe_fwd.5.egress_spec, _old_header_hdr.probe_fwd.6.egress_spec, _old_header_hdr.probe_fwd.7.egress_spec, _old_header_hdr.probe_fwd.8.egress_spec, _old_header_hdr.probe_fwd.9.egress_spec, _old_header_hdr.probe_fwd.last.egress_spec, byte_cnt_0, byte_cnt_reg_0, cur_time_0, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.probe.hop_cnt, hdr.probe_data.0.bos, hdr.probe_data.0.byte_cnt, hdr.probe_data.0.cur_time, hdr.probe_data.0.last_time, hdr.probe_data.0.port, hdr.probe_data.0.swid, hdr.probe_data.1.bos, hdr.probe_data.1.byte_cnt, hdr.probe_data.1.cur_time, hdr.probe_data.1.last_time, hdr.probe_data.1.port, hdr.probe_data.1.swid, hdr.probe_data.2.bos, hdr.probe_data.2.byte_cnt, hdr.probe_data.2.cur_time, hdr.probe_data.2.last_time, hdr.probe_data.2.port, hdr.probe_data.2.swid, hdr.probe_data.3.bos, hdr.probe_data.3.byte_cnt, hdr.probe_data.3.cur_time, hdr.probe_data.3.last_time, hdr.probe_data.3.port, hdr.probe_data.3.swid, hdr.probe_data.4.bos, hdr.probe_data.4.byte_cnt, hdr.probe_data.4.cur_time, hdr.probe_data.4.last_time, hdr.probe_data.4.port, hdr.probe_data.4.swid, hdr.probe_data.5.bos, hdr.probe_data.5.byte_cnt, hdr.probe_data.5.cur_time, hdr.probe_data.5.last_time, hdr.probe_data.5.port, hdr.probe_data.5.swid, hdr.probe_data.6.bos, hdr.probe_data.6.byte_cnt, hdr.probe_data.6.cur_time, hdr.probe_data.6.last_time, hdr.probe_data.6.port, hdr.probe_data.6.swid, hdr.probe_data.7.bos, hdr.probe_data.7.byte_cnt, hdr.probe_data.7.cur_time, hdr.probe_data.7.last_time, hdr.probe_data.7.port, hdr.probe_data.7.swid, hdr.probe_data.8.bos, hdr.probe_data.8.byte_cnt, hdr.probe_data.8.cur_time, hdr.probe_data.8.last_time, hdr.probe_data.8.port, hdr.probe_data.8.swid, hdr.probe_data.9.bos, hdr.probe_data.9.byte_cnt, hdr.probe_data.9.cur_time, hdr.probe_data.9.last_time, hdr.probe_data.9.port, hdr.probe_data.9.swid, hdr.probe_data.last.bos, hdr.probe_data.last.byte_cnt, hdr.probe_data.last.cur_time, hdr.probe_data.last.last_time, hdr.probe_data.last.port, hdr.probe_data.last.swid, hdr.probe_fwd.0.egress_spec, hdr.probe_fwd.1.egress_spec, hdr.probe_fwd.2.egress_spec, hdr.probe_fwd.3.egress_spec, hdr.probe_fwd.4.egress_spec, hdr.probe_fwd.5.egress_spec, hdr.probe_fwd.6.egress_spec, hdr.probe_fwd.7.egress_spec, hdr.probe_fwd.8.egress_spec, hdr.probe_fwd.9.egress_spec, hdr.probe_fwd.last.egress_spec, ipv4_lpm_0.action_run, isValid, last_time_0, last_time_reg_0, meta.egress_spec, meta.parser_metadata.remaining, new_byte_cnt_0, stack.index, standard_metadata.egress_spec, swid_0.action_run, tmp;
{
    call swid_0.action_run.limit();
    call ipv4_lpm_0.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;
procedure packet_in.extract(header:Ref);
    ensures (isValid[header] == true);
	modifies isValid;
procedure {:inline 1} packet_in.extract.headers.probe_data.next(stack:HeaderStack);
ensures(isValid[stack[stack.index[stack]]]==true && stack.index[stack]==old(stack.index[stack])+1);
	modifies isValid, stack.index;
procedure {:inline 1} packet_in.extract.headers.probe_fwd.next(stack:HeaderStack);
ensures(isValid[stack[stack.index[stack]]]==true && stack.index[stack]==old(stack.index[stack])+1);
	modifies isValid, stack.index;

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies isValid;
{
    call packet_in.extract(hdr.ipv4);
    call accept();
}

//Parser State parse_probe
procedure {:inline 1} parse_probe()
	modifies isValid, meta.egress_spec, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract(hdr.probe);
    meta.parser_metadata.remaining := add.bv8(hdr.probe.hop_cnt, 1);
    if(hdr.probe.hop_cnt == 0){
        call parse_probe_fwd();
    }
}

//Parser State parse_probe_data
procedure {:inline 1} parse_probe_data()
	modifies isValid, meta.egress_spec, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract.headers.probe_data.next(hdr.probe_data);
    if(hdr.probe_data.last.bos == 1){
        call parse_probe_fwd();
    }
}

//Parser State parse_probe_fwd
procedure {:inline 1} parse_probe_fwd()
	modifies isValid, meta.egress_spec, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract.headers.probe_fwd.next(hdr.probe_fwd);
    meta.parser_metadata.remaining := add.bv8(meta.parser_metadata.remaining, 255);
    meta.egress_spec := hdr.probe_fwd.last.egress_spec;
    if(meta.parser_metadata.remaining == 0){
        call accept();
    }
}
procedure reject();
    ensures drop==true;
	modifies drop;
procedure {:inline 1} setInvalid(header:Ref);
    ensures (isValid[header] == false);
	modifies isValid;
procedure {:inline 1} setValid(header:Ref);

// Action set_swid
procedure {:inline 1} set_swid(swid:int)
	modifies hdr.probe_data.0.swid;
{
    hdr.probe_data.0.swid := swid;
}

//Parser State start
procedure {:inline 1} start()
	modifies isValid, meta.egress_spec, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract(hdr.ethernet);
    if(hdr.ethernet.etherType == 2048){
        call parse_ipv4();
    }
    else if(hdr.ethernet.etherType == 2066){
        call parse_probe();
    }
}

procedure swid_0.action_run.limit();
    ensures(swid_0.action_run==swid_0.action.set_swid);
	modifies swid_0.action_run;

// Table swid_0
procedure {:inline 1} swid_0.apply()
	modifies hdr.probe_data.0.swid;
{
    var set_swid.swid:int;

    call swid_0.apply_table_entry();

    action_set_swid:
    if(swid_0.action_run == swid_0.action.set_swid){
        call set_swid(set_swid.swid);
    }
}

// Table Entry swid_0.apply_table_entry
procedure swid_0.apply_table_entry();

// Table Exit swid_0.apply_table_exit
procedure swid_0.apply_table_exit();
