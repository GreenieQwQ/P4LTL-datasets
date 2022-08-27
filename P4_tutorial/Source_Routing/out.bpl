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
const hdr.srcRoutes:HeaderStack;

// Header srcRoute_t
var hdr.srcRoutes.last:Ref;
var hdr.srcRoutes.last.bos:int;
var _old_header_hdr.srcRoutes.last.bos:int;
var hdr.srcRoutes.last.port:int;
var _old_header_hdr.srcRoutes.last.port:int;

// Header srcRoute_t
var hdr.srcRoutes.0:Ref;
var hdr.srcRoutes.0.bos:int;
var _old_header_hdr.srcRoutes.0.bos:int;
var hdr.srcRoutes.0.port:int;
var _old_header_hdr.srcRoutes.0.port:int;

// Header srcRoute_t
var hdr.srcRoutes.1:Ref;
var hdr.srcRoutes.1.bos:int;
var _old_header_hdr.srcRoutes.1.bos:int;
var hdr.srcRoutes.1.port:int;
var _old_header_hdr.srcRoutes.1.port:int;

// Header srcRoute_t
var hdr.srcRoutes.2:Ref;
var hdr.srcRoutes.2.bos:int;
var _old_header_hdr.srcRoutes.2.bos:int;
var hdr.srcRoutes.2.port:int;
var _old_header_hdr.srcRoutes.2.port:int;

// Header srcRoute_t
var hdr.srcRoutes.3:Ref;
var hdr.srcRoutes.3.bos:int;
var _old_header_hdr.srcRoutes.3.bos:int;
var hdr.srcRoutes.3.port:int;
var _old_header_hdr.srcRoutes.3.port:int;

// Header srcRoute_t
var hdr.srcRoutes.4:Ref;
var hdr.srcRoutes.4.bos:int;
var _old_header_hdr.srcRoutes.4.bos:int;
var hdr.srcRoutes.4.port:int;
var _old_header_hdr.srcRoutes.4.port:int;

// Header srcRoute_t
var hdr.srcRoutes.5:Ref;
var hdr.srcRoutes.5.bos:int;
var _old_header_hdr.srcRoutes.5.bos:int;
var hdr.srcRoutes.5.port:int;
var _old_header_hdr.srcRoutes.5.port:int;

// Header srcRoute_t
var hdr.srcRoutes.6:Ref;
var hdr.srcRoutes.6.bos:int;
var _old_header_hdr.srcRoutes.6.bos:int;
var hdr.srcRoutes.6.port:int;
var _old_header_hdr.srcRoutes.6.port:int;

// Header srcRoute_t
var hdr.srcRoutes.7:Ref;
var hdr.srcRoutes.7.bos:int;
var _old_header_hdr.srcRoutes.7.bos:int;
var hdr.srcRoutes.7.port:int;
var _old_header_hdr.srcRoutes.7.port:int;

// Header srcRoute_t
var hdr.srcRoutes.8:Ref;
var hdr.srcRoutes.8.bos:int;
var _old_header_hdr.srcRoutes.8.bos:int;
var hdr.srcRoutes.8.port:int;
var _old_header_hdr.srcRoutes.8.port:int;

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
{
}

// Control MyIngress
procedure {:inline 1} MyIngress()
	modifies drop, forward, hdr.ethernet.etherType, hdr.ipv4.ttl, standard_metadata.egress_spec;
{
    if(isValid[hdr.srcRoutes.0]){
        if((hdr.srcRoutes.0.bos == 1)){
            call srcRoute_finish();
        }
        call srcRoute_nhop();
        if(isValid[hdr.ipv4]){
            call update_ttl();
        }
    }
    else{
        call drop();
    }
}

// Control MyVerifyChecksum
procedure {:inline 1} MyVerifyChecksum()
{
}
procedure ULTIMATE.start()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.srcRoutes.0.bos, _old_header_hdr.srcRoutes.0.port, _old_header_hdr.srcRoutes.1.bos, _old_header_hdr.srcRoutes.1.port, _old_header_hdr.srcRoutes.2.bos, _old_header_hdr.srcRoutes.2.port, _old_header_hdr.srcRoutes.3.bos, _old_header_hdr.srcRoutes.3.port, _old_header_hdr.srcRoutes.4.bos, _old_header_hdr.srcRoutes.4.port, _old_header_hdr.srcRoutes.5.bos, _old_header_hdr.srcRoutes.5.port, _old_header_hdr.srcRoutes.6.bos, _old_header_hdr.srcRoutes.6.port, _old_header_hdr.srcRoutes.7.bos, _old_header_hdr.srcRoutes.7.port, _old_header_hdr.srcRoutes.8.bos, _old_header_hdr.srcRoutes.8.port, _old_header_hdr.srcRoutes.last.bos, _old_header_hdr.srcRoutes.last.port, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.srcRoutes.0.bos, hdr.srcRoutes.0.port, hdr.srcRoutes.1.bos, hdr.srcRoutes.1.port, hdr.srcRoutes.2.bos, hdr.srcRoutes.2.port, hdr.srcRoutes.3.bos, hdr.srcRoutes.3.port, hdr.srcRoutes.4.bos, hdr.srcRoutes.4.port, hdr.srcRoutes.5.bos, hdr.srcRoutes.5.port, hdr.srcRoutes.6.bos, hdr.srcRoutes.6.port, hdr.srcRoutes.7.bos, hdr.srcRoutes.7.port, hdr.srcRoutes.8.bos, hdr.srcRoutes.8.port, hdr.srcRoutes.last.bos, hdr.srcRoutes.last.port, isValid, stack.index, standard_metadata.egress_spec;
{
    call mainProcedure();
}

// Parser _parser_MyParser
procedure {:inline 1} _parser_MyParser()
	modifies drop, isValid, stack.index;
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
procedure {:inline 1} havocProcedure()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.srcRoutes.0.bos, _old_header_hdr.srcRoutes.0.port, _old_header_hdr.srcRoutes.1.bos, _old_header_hdr.srcRoutes.1.port, _old_header_hdr.srcRoutes.2.bos, _old_header_hdr.srcRoutes.2.port, _old_header_hdr.srcRoutes.3.bos, _old_header_hdr.srcRoutes.3.port, _old_header_hdr.srcRoutes.4.bos, _old_header_hdr.srcRoutes.4.port, _old_header_hdr.srcRoutes.5.bos, _old_header_hdr.srcRoutes.5.port, _old_header_hdr.srcRoutes.6.bos, _old_header_hdr.srcRoutes.6.port, _old_header_hdr.srcRoutes.7.bos, _old_header_hdr.srcRoutes.7.port, _old_header_hdr.srcRoutes.8.bos, _old_header_hdr.srcRoutes.8.port, _old_header_hdr.srcRoutes.last.bos, _old_header_hdr.srcRoutes.last.port, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.srcRoutes.0.bos, hdr.srcRoutes.0.port, hdr.srcRoutes.1.bos, hdr.srcRoutes.1.port, hdr.srcRoutes.2.bos, hdr.srcRoutes.2.port, hdr.srcRoutes.3.bos, hdr.srcRoutes.3.port, hdr.srcRoutes.4.bos, hdr.srcRoutes.4.port, hdr.srcRoutes.5.bos, hdr.srcRoutes.5.port, hdr.srcRoutes.6.bos, hdr.srcRoutes.6.port, hdr.srcRoutes.7.bos, hdr.srcRoutes.7.port, hdr.srcRoutes.8.bos, hdr.srcRoutes.8.port, hdr.srcRoutes.last.bos, hdr.srcRoutes.last.port, isValid;
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
    isValid[hdr.srcRoutes.last] := false;
    emit[hdr.srcRoutes.last] := false;
    havoc hdr.srcRoutes.last.bos;
    assume(0 <= hdr.srcRoutes.last.bos && hdr.srcRoutes.last.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.last.bos := hdr.srcRoutes.last.bos;
    havoc hdr.srcRoutes.last.port;
    assume(0 <= hdr.srcRoutes.last.port && hdr.srcRoutes.last.port <= power_2_15() );
    _old_header_hdr.srcRoutes.last.port := hdr.srcRoutes.last.port;
    isValid[hdr.srcRoutes.0] := false;
    emit[hdr.srcRoutes.0] := false;
    havoc hdr.srcRoutes.0.bos;
    assume(0 <= hdr.srcRoutes.0.bos && hdr.srcRoutes.0.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.0.bos := hdr.srcRoutes.0.bos;
    havoc hdr.srcRoutes.0.port;
    assume(0 <= hdr.srcRoutes.0.port && hdr.srcRoutes.0.port <= power_2_15() );
    _old_header_hdr.srcRoutes.0.port := hdr.srcRoutes.0.port;
    isValid[hdr.srcRoutes.1] := false;
    emit[hdr.srcRoutes.1] := false;
    havoc hdr.srcRoutes.1.bos;
    assume(0 <= hdr.srcRoutes.1.bos && hdr.srcRoutes.1.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.1.bos := hdr.srcRoutes.1.bos;
    havoc hdr.srcRoutes.1.port;
    assume(0 <= hdr.srcRoutes.1.port && hdr.srcRoutes.1.port <= power_2_15() );
    _old_header_hdr.srcRoutes.1.port := hdr.srcRoutes.1.port;
    isValid[hdr.srcRoutes.2] := false;
    emit[hdr.srcRoutes.2] := false;
    havoc hdr.srcRoutes.2.bos;
    assume(0 <= hdr.srcRoutes.2.bos && hdr.srcRoutes.2.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.2.bos := hdr.srcRoutes.2.bos;
    havoc hdr.srcRoutes.2.port;
    assume(0 <= hdr.srcRoutes.2.port && hdr.srcRoutes.2.port <= power_2_15() );
    _old_header_hdr.srcRoutes.2.port := hdr.srcRoutes.2.port;
    isValid[hdr.srcRoutes.3] := false;
    emit[hdr.srcRoutes.3] := false;
    havoc hdr.srcRoutes.3.bos;
    assume(0 <= hdr.srcRoutes.3.bos && hdr.srcRoutes.3.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.3.bos := hdr.srcRoutes.3.bos;
    havoc hdr.srcRoutes.3.port;
    assume(0 <= hdr.srcRoutes.3.port && hdr.srcRoutes.3.port <= power_2_15() );
    _old_header_hdr.srcRoutes.3.port := hdr.srcRoutes.3.port;
    isValid[hdr.srcRoutes.4] := false;
    emit[hdr.srcRoutes.4] := false;
    havoc hdr.srcRoutes.4.bos;
    assume(0 <= hdr.srcRoutes.4.bos && hdr.srcRoutes.4.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.4.bos := hdr.srcRoutes.4.bos;
    havoc hdr.srcRoutes.4.port;
    assume(0 <= hdr.srcRoutes.4.port && hdr.srcRoutes.4.port <= power_2_15() );
    _old_header_hdr.srcRoutes.4.port := hdr.srcRoutes.4.port;
    isValid[hdr.srcRoutes.5] := false;
    emit[hdr.srcRoutes.5] := false;
    havoc hdr.srcRoutes.5.bos;
    assume(0 <= hdr.srcRoutes.5.bos && hdr.srcRoutes.5.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.5.bos := hdr.srcRoutes.5.bos;
    havoc hdr.srcRoutes.5.port;
    assume(0 <= hdr.srcRoutes.5.port && hdr.srcRoutes.5.port <= power_2_15() );
    _old_header_hdr.srcRoutes.5.port := hdr.srcRoutes.5.port;
    isValid[hdr.srcRoutes.6] := false;
    emit[hdr.srcRoutes.6] := false;
    havoc hdr.srcRoutes.6.bos;
    assume(0 <= hdr.srcRoutes.6.bos && hdr.srcRoutes.6.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.6.bos := hdr.srcRoutes.6.bos;
    havoc hdr.srcRoutes.6.port;
    assume(0 <= hdr.srcRoutes.6.port && hdr.srcRoutes.6.port <= power_2_15() );
    _old_header_hdr.srcRoutes.6.port := hdr.srcRoutes.6.port;
    isValid[hdr.srcRoutes.7] := false;
    emit[hdr.srcRoutes.7] := false;
    havoc hdr.srcRoutes.7.bos;
    assume(0 <= hdr.srcRoutes.7.bos && hdr.srcRoutes.7.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.7.bos := hdr.srcRoutes.7.bos;
    havoc hdr.srcRoutes.7.port;
    assume(0 <= hdr.srcRoutes.7.port && hdr.srcRoutes.7.port <= power_2_15() );
    _old_header_hdr.srcRoutes.7.port := hdr.srcRoutes.7.port;
    isValid[hdr.srcRoutes.8] := false;
    emit[hdr.srcRoutes.8] := false;
    havoc hdr.srcRoutes.8.bos;
    assume(0 <= hdr.srcRoutes.8.bos && hdr.srcRoutes.8.bos <= power_2_1() );
    _old_header_hdr.srcRoutes.8.bos := hdr.srcRoutes.8.bos;
    havoc hdr.srcRoutes.8.port;
    assume(0 <= hdr.srcRoutes.8.port && hdr.srcRoutes.8.port <= power_2_15() );
    _old_header_hdr.srcRoutes.8.port := hdr.srcRoutes.8.port;
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
procedure {:inline 1} main()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.srcRoutes.0.bos, _old_header_hdr.srcRoutes.0.port, _old_header_hdr.srcRoutes.1.bos, _old_header_hdr.srcRoutes.1.port, _old_header_hdr.srcRoutes.2.bos, _old_header_hdr.srcRoutes.2.port, _old_header_hdr.srcRoutes.3.bos, _old_header_hdr.srcRoutes.3.port, _old_header_hdr.srcRoutes.4.bos, _old_header_hdr.srcRoutes.4.port, _old_header_hdr.srcRoutes.5.bos, _old_header_hdr.srcRoutes.5.port, _old_header_hdr.srcRoutes.6.bos, _old_header_hdr.srcRoutes.6.port, _old_header_hdr.srcRoutes.7.bos, _old_header_hdr.srcRoutes.7.port, _old_header_hdr.srcRoutes.8.bos, _old_header_hdr.srcRoutes.8.port, _old_header_hdr.srcRoutes.last.bos, _old_header_hdr.srcRoutes.last.port, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.srcRoutes.0.bos, hdr.srcRoutes.0.port, hdr.srcRoutes.1.bos, hdr.srcRoutes.1.port, hdr.srcRoutes.2.bos, hdr.srcRoutes.2.port, hdr.srcRoutes.3.bos, hdr.srcRoutes.3.port, hdr.srcRoutes.4.bos, hdr.srcRoutes.4.port, hdr.srcRoutes.5.bos, hdr.srcRoutes.5.port, hdr.srcRoutes.6.bos, hdr.srcRoutes.6.port, hdr.srcRoutes.7.bos, hdr.srcRoutes.7.port, hdr.srcRoutes.8.bos, hdr.srcRoutes.8.port, hdr.srcRoutes.last.bos, hdr.srcRoutes.last.port, isValid, stack.index, standard_metadata.egress_spec;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.srcRoutes.0.bos, _old_header_hdr.srcRoutes.0.port, _old_header_hdr.srcRoutes.1.bos, _old_header_hdr.srcRoutes.1.port, _old_header_hdr.srcRoutes.2.bos, _old_header_hdr.srcRoutes.2.port, _old_header_hdr.srcRoutes.3.bos, _old_header_hdr.srcRoutes.3.port, _old_header_hdr.srcRoutes.4.bos, _old_header_hdr.srcRoutes.4.port, _old_header_hdr.srcRoutes.5.bos, _old_header_hdr.srcRoutes.5.port, _old_header_hdr.srcRoutes.6.bos, _old_header_hdr.srcRoutes.6.port, _old_header_hdr.srcRoutes.7.bos, _old_header_hdr.srcRoutes.7.port, _old_header_hdr.srcRoutes.8.bos, _old_header_hdr.srcRoutes.8.port, _old_header_hdr.srcRoutes.last.bos, _old_header_hdr.srcRoutes.last.port, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.srcRoutes.0.bos, hdr.srcRoutes.0.port, hdr.srcRoutes.1.bos, hdr.srcRoutes.1.port, hdr.srcRoutes.2.bos, hdr.srcRoutes.2.port, hdr.srcRoutes.3.bos, hdr.srcRoutes.3.port, hdr.srcRoutes.4.bos, hdr.srcRoutes.4.port, hdr.srcRoutes.5.bos, hdr.srcRoutes.5.port, hdr.srcRoutes.6.bos, hdr.srcRoutes.6.port, hdr.srcRoutes.7.bos, hdr.srcRoutes.7.port, hdr.srcRoutes.8.bos, hdr.srcRoutes.8.port, hdr.srcRoutes.last.bos, hdr.srcRoutes.last.port, isValid, stack.index, standard_metadata.egress_spec;
{
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
procedure {:inline 1} packet_in.extract.headers.srcRoutes.next(stack:HeaderStack);
ensures(isValid[stack[stack.index[stack]]]==true && stack.index[stack]==old(stack.index[stack])+1);
	modifies isValid, stack.index;

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies isValid;
{
    call packet_in.extract(hdr.ipv4);
    call accept();
}

//Parser State parse_srcRouting
procedure {:inline 1} parse_srcRouting()
	modifies isValid, stack.index;
{
    call packet_in.extract.headers.srcRoutes.next(hdr.srcRoutes);
    if(hdr.srcRoutes.last.bos == 1){
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

// Action srcRoute_finish
procedure {:inline 1} srcRoute_finish()
	modifies hdr.ethernet.etherType;
{
    hdr.ethernet.etherType := 2048;
}

// Action srcRoute_nhop
procedure {:inline 1} srcRoute_nhop()
	modifies forward, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := (hdr.srcRoutes.0.port%power_2_9());
    forward := true;
    // pop_front
}

//Parser State start
procedure {:inline 1} start()
	modifies isValid, stack.index;
{
    call packet_in.extract(hdr.ethernet);
    if(hdr.ethernet.etherType == 4660){
        call parse_srcRouting();
    }
}

// Action update_ttl
procedure {:inline 1} update_ttl()
	modifies hdr.ipv4.ttl;
{
    hdr.ipv4.ttl := add.bv8(hdr.ipv4.ttl, 255);
}
