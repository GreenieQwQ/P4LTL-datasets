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

// Struct metadata

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.dstAddr:macAddr_t;
var _old_header_hdr.ethernet.dstAddr:macAddr_t;
var hdr.ethernet.srcAddr:macAddr_t;
var _old_header_hdr.ethernet.srcAddr:macAddr_t;
var hdr.ethernet.etherType:int;
var _old_header_hdr.ethernet.etherType:int;

// Table mac_lookup_0 Actionlist Declaration
type mac_lookup_0.action;
const unique mac_lookup_0.action.multicast : mac_lookup_0.action;
const unique mac_lookup_0.action.mac_forward : mac_lookup_0.action;
var mac_lookup_0.action_run : mac_lookup_0.action;
var mac_lookup_0.hit : bool;
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
}

// Control MyEgress
procedure {:inline 1} MyEgress()
	modifies drop;
{
    if((standard_metadata.egress_port == standard_metadata.ingress_port)){
        call drop_2();
    }
}

// Control MyIngress
procedure {:inline 1} MyIngress()
	modifies forward, hdr.ethernet.dstAddr, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    if(isValid[hdr.ethernet]){
        call mac_lookup_0.apply();
    }
}

// Control MyVerifyChecksum
procedure {:inline 1} MyVerifyChecksum()
{
}
procedure ULTIMATE.start()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, isValid, mac_lookup_0.action_run, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    call mainProcedure();
}

// Parser _parser_MyParser
procedure {:inline 1} _parser_MyParser()
	modifies drop, isValid;
{
    call start();
}
procedure {:inline 1} accept()
{
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

// Action drop_2
procedure {:inline 1} drop_2()
	modifies drop;
{
    call mark_to_drop();
}
procedure {:inline 1} havocProcedure()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, isValid;
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
}

// Action mac_forward
procedure {:inline 1} mac_forward(port:egressSpec_t)
	modifies forward, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := port;
    forward := true;
}

procedure mac_lookup_0.action_run.limit();
    ensures(mac_lookup_0.action_run==mac_lookup_0.action.multicast || mac_lookup_0.action_run==mac_lookup_0.action.mac_forward);
	modifies mac_lookup_0.action_run;

// Table mac_lookup_0
procedure {:inline 1} mac_lookup_0.apply()
	modifies forward, hdr.ethernet.dstAddr, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    var mac_forward.port:egressSpec_t;
    hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;

    call mac_lookup_0.apply_table_entry();

    action_multicast:
    if(mac_lookup_0.action_run == mac_lookup_0.action.multicast){
        call multicast();
    }

    action_mac_forward:
    if(mac_lookup_0.action_run == mac_lookup_0.action.mac_forward){
        call mac_forward(mac_forward.port);
    }
}

// Table Entry mac_lookup_0.apply_table_entry
procedure mac_lookup_0.apply_table_entry();

// Table Exit mac_lookup_0.apply_table_exit
procedure mac_lookup_0.apply_table_exit();
procedure {:inline 1} main()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, isValid, standard_metadata.egress_spec, standard_metadata.mcast_grp;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, isValid, mac_lookup_0.action_run, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    call mac_lookup_0.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;

// Action multicast
procedure {:inline 1} multicast()
	modifies standard_metadata.mcast_grp;
{
    standard_metadata.mcast_grp := 1;
}
procedure packet_in.extract(header:Ref);
    ensures (isValid[header] == true);
	modifies isValid;
procedure reject();
    ensures drop==true;
	modifies drop;
procedure {:inline 1} setInvalid(header:Ref);
    ensures (isValid[header] == false);
	modifies isValid;
procedure {:inline 1} setValid(header:Ref);

//Parser State start
procedure {:inline 1} start()
	modifies isValid;
{
    call packet_in.extract(hdr.ethernet);
}
