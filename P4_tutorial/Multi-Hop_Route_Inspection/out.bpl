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
type switchID_t = int;
type qdepth_t = int;

// Struct ingress_metadata_t

// Struct parser_metadata_t

// Struct metadata
var meta.ingress_metadata.count:int;
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

// Header ipv4_option_t
var hdr.ipv4_option:Ref;
var hdr.ipv4_option.copyFlag:int;
var _old_header_hdr.ipv4_option.copyFlag:int;
var hdr.ipv4_option.optClass:int;
var _old_header_hdr.ipv4_option.optClass:int;
var hdr.ipv4_option.option:int;
var _old_header_hdr.ipv4_option.option:int;
var hdr.ipv4_option.optionLength:int;
var _old_header_hdr.ipv4_option.optionLength:int;

// Header mri_t
var hdr.mri:Ref;
var hdr.mri.count:int;
var _old_header_hdr.mri.count:int;
const hdr.swtraces:HeaderStack;

// Header switch_t
var hdr.swtraces.last:Ref;
var hdr.swtraces.last.swid:switchID_t;
var _old_header_hdr.swtraces.last.swid:switchID_t;
var hdr.swtraces.last.qdepth:qdepth_t;
var _old_header_hdr.swtraces.last.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.0:Ref;
var hdr.swtraces.0.swid:switchID_t;
var _old_header_hdr.swtraces.0.swid:switchID_t;
var hdr.swtraces.0.qdepth:qdepth_t;
var _old_header_hdr.swtraces.0.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.1:Ref;
var hdr.swtraces.1.swid:switchID_t;
var _old_header_hdr.swtraces.1.swid:switchID_t;
var hdr.swtraces.1.qdepth:qdepth_t;
var _old_header_hdr.swtraces.1.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.2:Ref;
var hdr.swtraces.2.swid:switchID_t;
var _old_header_hdr.swtraces.2.swid:switchID_t;
var hdr.swtraces.2.qdepth:qdepth_t;
var _old_header_hdr.swtraces.2.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.3:Ref;
var hdr.swtraces.3.swid:switchID_t;
var _old_header_hdr.swtraces.3.swid:switchID_t;
var hdr.swtraces.3.qdepth:qdepth_t;
var _old_header_hdr.swtraces.3.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.4:Ref;
var hdr.swtraces.4.swid:switchID_t;
var _old_header_hdr.swtraces.4.swid:switchID_t;
var hdr.swtraces.4.qdepth:qdepth_t;
var _old_header_hdr.swtraces.4.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.5:Ref;
var hdr.swtraces.5.swid:switchID_t;
var _old_header_hdr.swtraces.5.swid:switchID_t;
var hdr.swtraces.5.qdepth:qdepth_t;
var _old_header_hdr.swtraces.5.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.6:Ref;
var hdr.swtraces.6.swid:switchID_t;
var _old_header_hdr.swtraces.6.swid:switchID_t;
var hdr.swtraces.6.qdepth:qdepth_t;
var _old_header_hdr.swtraces.6.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.7:Ref;
var hdr.swtraces.7.swid:switchID_t;
var _old_header_hdr.swtraces.7.swid:switchID_t;
var hdr.swtraces.7.qdepth:qdepth_t;
var _old_header_hdr.swtraces.7.qdepth:qdepth_t;

// Header switch_t
var hdr.swtraces.8:Ref;
var hdr.swtraces.8.swid:switchID_t;
var _old_header_hdr.swtraces.8.swid:switchID_t;
var hdr.swtraces.8.qdepth:qdepth_t;
var _old_header_hdr.swtraces.8.qdepth:qdepth_t;
function {:inline true} bsge.bv4(left:int, right:int) : bool{left >= right}
function {:inline true} add.bv16(left:int, right:int) : int{((left%power_2_16())+(right%power_2_16()))%power_2_16()}
function {:inline true} add.bv8(left:int, right:int) : int{((left%power_2_8())+(right%power_2_8()))%power_2_8()}

// Table ipv4_lpm_0 Actionlist Declaration
type ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.ipv4_forward : ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.drop : ipv4_lpm_0.action;
var ipv4_lpm_0.action_run : ipv4_lpm_0.action;
var ipv4_lpm_0.hit : bool;
function {:inline true} add.bv4(left:int, right:int) : int{((left%power_2_4())+(right%power_2_4()))%power_2_4()}

// Table swtrace_0 Actionlist Declaration
type swtrace_0.action;
const unique swtrace_0.action.add_swtrace : swtrace_0.action;
var swtrace_0.action_run : swtrace_0.action;
var swtrace_0.hit : bool;
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
	modifies hdr.ipv4.ihl, hdr.ipv4.totalLen, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, isValid;
{
    if(isValid[hdr.mri]){
        call swtrace_0.apply();
    }
}

// Control MyIngress
procedure {:inline 1} MyIngress()
	modifies drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.dstAddr, hdr.ipv4.ttl, standard_metadata.egress_spec;
{
    if(isValid[hdr.ipv4]){
        call ipv4_lpm_0.apply();
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.ipv4_option.copyFlag, _old_header_hdr.ipv4_option.optClass, _old_header_hdr.ipv4_option.option, _old_header_hdr.ipv4_option.optionLength, _old_header_hdr.mri.count, _old_header_hdr.swtraces.0.qdepth, _old_header_hdr.swtraces.0.swid, _old_header_hdr.swtraces.1.qdepth, _old_header_hdr.swtraces.1.swid, _old_header_hdr.swtraces.2.qdepth, _old_header_hdr.swtraces.2.swid, _old_header_hdr.swtraces.3.qdepth, _old_header_hdr.swtraces.3.swid, _old_header_hdr.swtraces.4.qdepth, _old_header_hdr.swtraces.4.swid, _old_header_hdr.swtraces.5.qdepth, _old_header_hdr.swtraces.5.swid, _old_header_hdr.swtraces.6.qdepth, _old_header_hdr.swtraces.6.swid, _old_header_hdr.swtraces.7.qdepth, _old_header_hdr.swtraces.7.swid, _old_header_hdr.swtraces.8.qdepth, _old_header_hdr.swtraces.8.swid, _old_header_hdr.swtraces.last.qdepth, _old_header_hdr.swtraces.last.swid, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.ipv4_option.copyFlag, hdr.ipv4_option.optClass, hdr.ipv4_option.option, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, hdr.swtraces.1.qdepth, hdr.swtraces.1.swid, hdr.swtraces.2.qdepth, hdr.swtraces.2.swid, hdr.swtraces.3.qdepth, hdr.swtraces.3.swid, hdr.swtraces.4.qdepth, hdr.swtraces.4.swid, hdr.swtraces.5.qdepth, hdr.swtraces.5.swid, hdr.swtraces.6.qdepth, hdr.swtraces.6.swid, hdr.swtraces.7.qdepth, hdr.swtraces.7.swid, hdr.swtraces.8.qdepth, hdr.swtraces.8.swid, hdr.swtraces.last.qdepth, hdr.swtraces.last.swid, ipv4_lpm_0.action_run, isValid, meta.parser_metadata.remaining, stack.index, standard_metadata.egress_spec, swtrace_0.action_run;
{
    call mainProcedure();
}

// Parser _parser_MyParser
procedure {:inline 1} _parser_MyParser()
	modifies drop, isValid, meta.parser_metadata.remaining, stack.index;
{
    call start();
}
procedure {:inline 1} accept()
{
}

// Action add_swtrace
procedure {:inline 1} add_swtrace(swid:switchID_t)
	modifies hdr.ipv4.ihl, hdr.ipv4.totalLen, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, isValid;
{
    hdr.mri.count := add.bv16(hdr.mri.count, 1);
    // push_front
    call setValid(hdr.swtraces[0]);
    hdr.swtraces.0.swid := swid;
    hdr.swtraces.0.qdepth := standard_metadata.deq_qdepth;
    hdr.ipv4.ihl := add.bv4(hdr.ipv4.ihl, 2);
    hdr.ipv4_option.optionLength := add.bv8(hdr.ipv4_option.optionLength, 8);
    hdr.ipv4.totalLen := add.bv16(hdr.ipv4.totalLen, 8);
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.ipv4_option.copyFlag, _old_header_hdr.ipv4_option.optClass, _old_header_hdr.ipv4_option.option, _old_header_hdr.ipv4_option.optionLength, _old_header_hdr.mri.count, _old_header_hdr.swtraces.0.qdepth, _old_header_hdr.swtraces.0.swid, _old_header_hdr.swtraces.1.qdepth, _old_header_hdr.swtraces.1.swid, _old_header_hdr.swtraces.2.qdepth, _old_header_hdr.swtraces.2.swid, _old_header_hdr.swtraces.3.qdepth, _old_header_hdr.swtraces.3.swid, _old_header_hdr.swtraces.4.qdepth, _old_header_hdr.swtraces.4.swid, _old_header_hdr.swtraces.5.qdepth, _old_header_hdr.swtraces.5.swid, _old_header_hdr.swtraces.6.qdepth, _old_header_hdr.swtraces.6.swid, _old_header_hdr.swtraces.7.qdepth, _old_header_hdr.swtraces.7.swid, _old_header_hdr.swtraces.8.qdepth, _old_header_hdr.swtraces.8.swid, _old_header_hdr.swtraces.last.qdepth, _old_header_hdr.swtraces.last.swid, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.ipv4_option.copyFlag, hdr.ipv4_option.optClass, hdr.ipv4_option.option, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, hdr.swtraces.1.qdepth, hdr.swtraces.1.swid, hdr.swtraces.2.qdepth, hdr.swtraces.2.swid, hdr.swtraces.3.qdepth, hdr.swtraces.3.swid, hdr.swtraces.4.qdepth, hdr.swtraces.4.swid, hdr.swtraces.5.qdepth, hdr.swtraces.5.swid, hdr.swtraces.6.qdepth, hdr.swtraces.6.swid, hdr.swtraces.7.qdepth, hdr.swtraces.7.swid, hdr.swtraces.8.qdepth, hdr.swtraces.8.swid, hdr.swtraces.last.qdepth, hdr.swtraces.last.swid, isValid;
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
    isValid[hdr.ipv4_option] := false;
    emit[hdr.ipv4_option] := false;
    havoc hdr.ipv4_option.copyFlag;
    assume(0 <= hdr.ipv4_option.copyFlag && hdr.ipv4_option.copyFlag <= power_2_1() );
    _old_header_hdr.ipv4_option.copyFlag := hdr.ipv4_option.copyFlag;
    havoc hdr.ipv4_option.optClass;
    assume(0 <= hdr.ipv4_option.optClass && hdr.ipv4_option.optClass <= power_2_2() );
    _old_header_hdr.ipv4_option.optClass := hdr.ipv4_option.optClass;
    havoc hdr.ipv4_option.option;
    assume(0 <= hdr.ipv4_option.option && hdr.ipv4_option.option <= power_2_5() );
    _old_header_hdr.ipv4_option.option := hdr.ipv4_option.option;
    havoc hdr.ipv4_option.optionLength;
    assume(0 <= hdr.ipv4_option.optionLength && hdr.ipv4_option.optionLength <= power_2_8() );
    _old_header_hdr.ipv4_option.optionLength := hdr.ipv4_option.optionLength;
    isValid[hdr.mri] := false;
    emit[hdr.mri] := false;
    havoc hdr.mri.count;
    assume(0 <= hdr.mri.count && hdr.mri.count <= power_2_16() );
    _old_header_hdr.mri.count := hdr.mri.count;
    isValid[hdr.swtraces.last] := false;
    emit[hdr.swtraces.last] := false;
    havoc hdr.swtraces.last.swid;
    _old_header_hdr.swtraces.last.swid := hdr.swtraces.last.swid;
    havoc hdr.swtraces.last.qdepth;
    _old_header_hdr.swtraces.last.qdepth := hdr.swtraces.last.qdepth;
    isValid[hdr.swtraces.0] := false;
    emit[hdr.swtraces.0] := false;
    havoc hdr.swtraces.0.swid;
    _old_header_hdr.swtraces.0.swid := hdr.swtraces.0.swid;
    havoc hdr.swtraces.0.qdepth;
    _old_header_hdr.swtraces.0.qdepth := hdr.swtraces.0.qdepth;
    isValid[hdr.swtraces.1] := false;
    emit[hdr.swtraces.1] := false;
    havoc hdr.swtraces.1.swid;
    _old_header_hdr.swtraces.1.swid := hdr.swtraces.1.swid;
    havoc hdr.swtraces.1.qdepth;
    _old_header_hdr.swtraces.1.qdepth := hdr.swtraces.1.qdepth;
    isValid[hdr.swtraces.2] := false;
    emit[hdr.swtraces.2] := false;
    havoc hdr.swtraces.2.swid;
    _old_header_hdr.swtraces.2.swid := hdr.swtraces.2.swid;
    havoc hdr.swtraces.2.qdepth;
    _old_header_hdr.swtraces.2.qdepth := hdr.swtraces.2.qdepth;
    isValid[hdr.swtraces.3] := false;
    emit[hdr.swtraces.3] := false;
    havoc hdr.swtraces.3.swid;
    _old_header_hdr.swtraces.3.swid := hdr.swtraces.3.swid;
    havoc hdr.swtraces.3.qdepth;
    _old_header_hdr.swtraces.3.qdepth := hdr.swtraces.3.qdepth;
    isValid[hdr.swtraces.4] := false;
    emit[hdr.swtraces.4] := false;
    havoc hdr.swtraces.4.swid;
    _old_header_hdr.swtraces.4.swid := hdr.swtraces.4.swid;
    havoc hdr.swtraces.4.qdepth;
    _old_header_hdr.swtraces.4.qdepth := hdr.swtraces.4.qdepth;
    isValid[hdr.swtraces.5] := false;
    emit[hdr.swtraces.5] := false;
    havoc hdr.swtraces.5.swid;
    _old_header_hdr.swtraces.5.swid := hdr.swtraces.5.swid;
    havoc hdr.swtraces.5.qdepth;
    _old_header_hdr.swtraces.5.qdepth := hdr.swtraces.5.qdepth;
    isValid[hdr.swtraces.6] := false;
    emit[hdr.swtraces.6] := false;
    havoc hdr.swtraces.6.swid;
    _old_header_hdr.swtraces.6.swid := hdr.swtraces.6.swid;
    havoc hdr.swtraces.6.qdepth;
    _old_header_hdr.swtraces.6.qdepth := hdr.swtraces.6.qdepth;
    isValid[hdr.swtraces.7] := false;
    emit[hdr.swtraces.7] := false;
    havoc hdr.swtraces.7.swid;
    _old_header_hdr.swtraces.7.swid := hdr.swtraces.7.swid;
    havoc hdr.swtraces.7.qdepth;
    _old_header_hdr.swtraces.7.qdepth := hdr.swtraces.7.qdepth;
    isValid[hdr.swtraces.8] := false;
    emit[hdr.swtraces.8] := false;
    havoc hdr.swtraces.8.swid;
    _old_header_hdr.swtraces.8.swid := hdr.swtraces.8.swid;
    havoc hdr.swtraces.8.qdepth;
    _old_header_hdr.swtraces.8.qdepth := hdr.swtraces.8.qdepth;
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
procedure {:inline 1} main()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.ipv4_option.copyFlag, _old_header_hdr.ipv4_option.optClass, _old_header_hdr.ipv4_option.option, _old_header_hdr.ipv4_option.optionLength, _old_header_hdr.mri.count, _old_header_hdr.swtraces.0.qdepth, _old_header_hdr.swtraces.0.swid, _old_header_hdr.swtraces.1.qdepth, _old_header_hdr.swtraces.1.swid, _old_header_hdr.swtraces.2.qdepth, _old_header_hdr.swtraces.2.swid, _old_header_hdr.swtraces.3.qdepth, _old_header_hdr.swtraces.3.swid, _old_header_hdr.swtraces.4.qdepth, _old_header_hdr.swtraces.4.swid, _old_header_hdr.swtraces.5.qdepth, _old_header_hdr.swtraces.5.swid, _old_header_hdr.swtraces.6.qdepth, _old_header_hdr.swtraces.6.swid, _old_header_hdr.swtraces.7.qdepth, _old_header_hdr.swtraces.7.swid, _old_header_hdr.swtraces.8.qdepth, _old_header_hdr.swtraces.8.swid, _old_header_hdr.swtraces.last.qdepth, _old_header_hdr.swtraces.last.swid, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.ipv4_option.copyFlag, hdr.ipv4_option.optClass, hdr.ipv4_option.option, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, hdr.swtraces.1.qdepth, hdr.swtraces.1.swid, hdr.swtraces.2.qdepth, hdr.swtraces.2.swid, hdr.swtraces.3.qdepth, hdr.swtraces.3.swid, hdr.swtraces.4.qdepth, hdr.swtraces.4.swid, hdr.swtraces.5.qdepth, hdr.swtraces.5.swid, hdr.swtraces.6.qdepth, hdr.swtraces.6.swid, hdr.swtraces.7.qdepth, hdr.swtraces.7.swid, hdr.swtraces.8.qdepth, hdr.swtraces.8.swid, hdr.swtraces.last.qdepth, hdr.swtraces.last.swid, isValid, meta.parser_metadata.remaining, stack.index, standard_metadata.egress_spec;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.ipv4_option.copyFlag, _old_header_hdr.ipv4_option.optClass, _old_header_hdr.ipv4_option.option, _old_header_hdr.ipv4_option.optionLength, _old_header_hdr.mri.count, _old_header_hdr.swtraces.0.qdepth, _old_header_hdr.swtraces.0.swid, _old_header_hdr.swtraces.1.qdepth, _old_header_hdr.swtraces.1.swid, _old_header_hdr.swtraces.2.qdepth, _old_header_hdr.swtraces.2.swid, _old_header_hdr.swtraces.3.qdepth, _old_header_hdr.swtraces.3.swid, _old_header_hdr.swtraces.4.qdepth, _old_header_hdr.swtraces.4.swid, _old_header_hdr.swtraces.5.qdepth, _old_header_hdr.swtraces.5.swid, _old_header_hdr.swtraces.6.qdepth, _old_header_hdr.swtraces.6.swid, _old_header_hdr.swtraces.7.qdepth, _old_header_hdr.swtraces.7.swid, _old_header_hdr.swtraces.8.qdepth, _old_header_hdr.swtraces.8.swid, _old_header_hdr.swtraces.last.qdepth, _old_header_hdr.swtraces.last.swid, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.ipv4_option.copyFlag, hdr.ipv4_option.optClass, hdr.ipv4_option.option, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, hdr.swtraces.1.qdepth, hdr.swtraces.1.swid, hdr.swtraces.2.qdepth, hdr.swtraces.2.swid, hdr.swtraces.3.qdepth, hdr.swtraces.3.swid, hdr.swtraces.4.qdepth, hdr.swtraces.4.swid, hdr.swtraces.5.qdepth, hdr.swtraces.5.swid, hdr.swtraces.6.qdepth, hdr.swtraces.6.swid, hdr.swtraces.7.qdepth, hdr.swtraces.7.swid, hdr.swtraces.8.qdepth, hdr.swtraces.8.swid, hdr.swtraces.last.qdepth, hdr.swtraces.last.swid, ipv4_lpm_0.action_run, isValid, meta.parser_metadata.remaining, stack.index, standard_metadata.egress_spec, swtrace_0.action_run;
{
    call swtrace_0.action_run.limit();
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
procedure {:inline 1} packet_in.extract.headers.swtraces.next(stack:HeaderStack);
ensures(isValid[stack[stack.index[stack]]]==true && stack.index[stack]==old(stack.index[stack])+1);
	modifies isValid, stack.index;

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies isValid, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract(hdr.ipv4);
    // verify
    assert(bsge.bv4(hdr.ipv4.ihl, 5));
    if(hdr.ipv4.ihl == 5){
        call accept();
    }
}

//Parser State parse_ipv4_option
procedure {:inline 1} parse_ipv4_option()
	modifies isValid, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract(hdr.ipv4_option);
    if(hdr.ipv4_option.option == 31){
        call parse_mri();
    }
}

//Parser State parse_mri
procedure {:inline 1} parse_mri()
	modifies isValid, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract(hdr.mri);
    meta.parser_metadata.remaining := hdr.mri.count;
    if(meta.parser_metadata.remaining == 0){
        call accept();
    }
}

//Parser State parse_swtrace
procedure {:inline 1} parse_swtrace()
	modifies isValid, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract.headers.swtraces.next(hdr.swtraces);
    meta.parser_metadata.remaining := add.bv16(meta.parser_metadata.remaining, 65535);
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

//Parser State start
procedure {:inline 1} start()
	modifies isValid, meta.parser_metadata.remaining, stack.index;
{
    call packet_in.extract(hdr.ethernet);
    if(hdr.ethernet.etherType == 2048){
        call parse_ipv4();
    }
}

procedure swtrace_0.action_run.limit();
    ensures(swtrace_0.action_run==swtrace_0.action.add_swtrace);
	modifies swtrace_0.action_run;

// Table swtrace_0
procedure {:inline 1} swtrace_0.apply()
	modifies hdr.ipv4.ihl, hdr.ipv4.totalLen, hdr.ipv4_option.optionLength, hdr.mri.count, hdr.swtraces.0.qdepth, hdr.swtraces.0.swid, isValid;
{
    var add_swtrace.swid:switchID_t;

    call swtrace_0.apply_table_entry();

    action_add_swtrace:
    if(swtrace_0.action_run == swtrace_0.action.add_swtrace){
        call add_swtrace(add_swtrace.swid);
    }
}

// Table Entry swtrace_0.apply_table_entry
procedure swtrace_0.apply_table_entry();

// Table Exit swtrace_0.apply_table_exit
procedure swtrace_0.apply_table_exit();
