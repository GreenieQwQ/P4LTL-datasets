//#LTLProperty: [](AP(drop))


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

// Header myTunnel_t
var hdr.myTunnel:Ref;
var hdr.myTunnel.proto_id:int;
var _old_header_hdr.myTunnel.proto_id:int;
var hdr.myTunnel.dst_id:int;
var _old_header_hdr.myTunnel.dst_id:int;

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
function {:inline true} add.bv8(left:int, right:int) : int{((left%power_2_8())+(right%power_2_8()))%power_2_8()}

// Table ipv4_lpm_0 Actionlist Declaration
type ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.ipv4_forward : ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.drop : ipv4_lpm_0.action;
var ipv4_lpm_0.action_run : ipv4_lpm_0.action;
var ipv4_lpm_0.hit : bool;

// Table myTunnel_exact_0 Actionlist Declaration
type myTunnel_exact_0.action;
const unique myTunnel_exact_0.action.myTunnel_forward : myTunnel_exact_0.action;
var myTunnel_exact_0.action_run : myTunnel_exact_0.action;
var myTunnel_exact_0.hit : bool;
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
{
}

// Control MyIngress
procedure {:inline 1} MyIngress()
	modifies drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.dstAddr, hdr.ipv4.ttl, hdr.myTunnel.dst_id, standard_metadata.egress_spec;
{
    if((isValid[hdr.ipv4]) && (!(isValid[hdr.myTunnel]))){
        call ipv4_lpm_0.apply();
    }
    if(isValid[hdr.myTunnel]){
        call myTunnel_exact_0.apply();
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
procedure ULTIMATE.start()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.myTunnel.dst_id, _old_header_hdr.myTunnel.proto_id, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.myTunnel.dst_id, hdr.myTunnel.proto_id, ipv4_lpm_0.action_run, isValid, myTunnel_exact_0.action_run, standard_metadata.egress_spec;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.myTunnel.dst_id, _old_header_hdr.myTunnel.proto_id, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.myTunnel.dst_id, hdr.myTunnel.proto_id, isValid;
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
    isValid[hdr.myTunnel] := false;
    emit[hdr.myTunnel] := false;
    havoc hdr.myTunnel.proto_id;
    assume(0 <= hdr.myTunnel.proto_id && hdr.myTunnel.proto_id <= power_2_16() );
    _old_header_hdr.myTunnel.proto_id := hdr.myTunnel.proto_id;
    havoc hdr.myTunnel.dst_id;
    assume(0 <= hdr.myTunnel.dst_id && hdr.myTunnel.dst_id <= power_2_16() );
    _old_header_hdr.myTunnel.dst_id := hdr.myTunnel.dst_id;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.myTunnel.dst_id, _old_header_hdr.myTunnel.proto_id, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.myTunnel.dst_id, hdr.myTunnel.proto_id, isValid, standard_metadata.egress_spec;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.myTunnel.dst_id, _old_header_hdr.myTunnel.proto_id, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.myTunnel.dst_id, hdr.myTunnel.proto_id, ipv4_lpm_0.action_run, isValid, myTunnel_exact_0.action_run, standard_metadata.egress_spec;
{
    call myTunnel_exact_0.action_run.limit();
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

procedure myTunnel_exact_0.action_run.limit();
    ensures(myTunnel_exact_0.action_run==myTunnel_exact_0.action.myTunnel_forward);
	modifies myTunnel_exact_0.action_run;

// Table myTunnel_exact_0
procedure {:inline 1} myTunnel_exact_0.apply()
	modifies forward, hdr.myTunnel.dst_id, standard_metadata.egress_spec;
{
    var myTunnel_forward.port:egressSpec_t;
    hdr.myTunnel.dst_id := hdr.myTunnel.dst_id;

    call myTunnel_exact_0.apply_table_entry();

    action_myTunnel_forward:
    if(myTunnel_exact_0.action_run == myTunnel_exact_0.action.myTunnel_forward){
        call myTunnel_forward(myTunnel_forward.port);
    }
}

// Table Entry myTunnel_exact_0.apply_table_entry
procedure myTunnel_exact_0.apply_table_entry();

// Table Exit myTunnel_exact_0.apply_table_exit
procedure myTunnel_exact_0.apply_table_exit();

// Action myTunnel_forward
procedure {:inline 1} myTunnel_forward(port:egressSpec_t)
	modifies forward, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := port;
    forward := true;
}
procedure packet_in.extract(header:Ref);
    ensures (isValid[header] == true);
	modifies isValid;

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies isValid;
{
    call packet_in.extract(hdr.ipv4);
    call accept();
}

//Parser State parse_myTunnel
procedure {:inline 1} parse_myTunnel()
	modifies isValid;
{
    call packet_in.extract(hdr.myTunnel);
    if(hdr.myTunnel.proto_id == 2048){
        call parse_ipv4();
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
	modifies isValid;
{
    call packet_in.extract(hdr.ethernet);
    if(hdr.ethernet.etherType == 4626){
        call parse_myTunnel();
    }
    else if(hdr.ethernet.etherType == 2048){
        call parse_ipv4();
    }
}
