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

// Header tcp_t
var hdr.tcp:Ref;
var hdr.tcp.srcPort:int;
var _old_header_hdr.tcp.srcPort:int;
var hdr.tcp.dstPort:int;
var _old_header_hdr.tcp.dstPort:int;
var hdr.tcp.seqNo:int;
var _old_header_hdr.tcp.seqNo:int;
var hdr.tcp.ackNo:int;
var _old_header_hdr.tcp.ackNo:int;
var hdr.tcp.dataOffset:int;
var _old_header_hdr.tcp.dataOffset:int;
var hdr.tcp.res:int;
var _old_header_hdr.tcp.res:int;
var hdr.tcp.cwr:int;
var _old_header_hdr.tcp.cwr:int;
var hdr.tcp.ece:int;
var _old_header_hdr.tcp.ece:int;
var hdr.tcp.urg:int;
var _old_header_hdr.tcp.urg:int;
var hdr.tcp.ack:int;
var _old_header_hdr.tcp.ack:int;
var hdr.tcp.psh:int;
var _old_header_hdr.tcp.psh:int;
var hdr.tcp.rst:int;
var _old_header_hdr.tcp.rst:int;
var hdr.tcp.syn:int;
var _old_header_hdr.tcp.syn:int;
var hdr.tcp.fin:int;
var _old_header_hdr.tcp.fin:int;
var hdr.tcp.window:int;
var _old_header_hdr.tcp.window:int;
var hdr.tcp.checksum:int;
var _old_header_hdr.tcp.checksum:int;
var hdr.tcp.urgentPtr:int;
var _old_header_hdr.tcp.urgentPtr:int;
var reg_pos_one_0:int;
var reg_pos_two_0:int;
var reg_val_one_0:int;
var reg_val_two_0:int;
var direction_0:int;

// Register bloom_filter_1
var bloom_filter_1:[int]int;
const bloom_filter_1.size:int;
axiom bloom_filter_1.size == 4096;

// Register bloom_filter_2
var bloom_filter_2:[int]int;
const bloom_filter_2.size:int;
axiom bloom_filter_2.size == 4096;
function {:inline true} bsge.(left:int, right:int) : bool{left >= right}
function {:inline true} add.bv8(left:int, right:int) : int{((left%power_2_8())+(right%power_2_8()))%power_2_8()}

// Table ipv4_lpm_0 Actionlist Declaration
type ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.ipv4_forward : ipv4_lpm_0.action;
const unique ipv4_lpm_0.action.drop : ipv4_lpm_0.action;
var ipv4_lpm_0.action_run : ipv4_lpm_0.action;
var ipv4_lpm_0.hit : bool;

// Table check_ports_0 Actionlist Declaration
type check_ports_0.action;
const unique check_ports_0.action.set_direction : check_ports_0.action;
var check_ports_0.action_run : check_ports_0.action;
var check_ports_0.hit : bool;
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
	modifies bloom_filter_1, bloom_filter_2, direction_0, drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.ipv4.dstAddr, hdr.ipv4.ttl, reg_pos_one_0, reg_pos_two_0, reg_val_one_0, reg_val_two_0, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    if(isValid[hdr.ipv4]){
        call ipv4_lpm_0.apply();
        if(isValid[hdr.tcp]){
            direction_0 := 0;
            call check_ports_0.apply();
            if(check_ports_0.hit){
                if((direction_0) == (0)){
                    call compute_hashes(hdr.ipv4.srcAddr, hdr.ipv4.dstAddr, hdr.tcp.srcPort, hdr.tcp.dstPort);
                }
                else{
                    call compute_hashes_2(hdr.ipv4.dstAddr, hdr.ipv4.srcAddr, hdr.tcp.dstPort, hdr.tcp.srcPort);
                }
                if((direction_0) == (0)){
                    if((hdr.tcp.syn == 1)){
                        // write
                        call bloom_filter_1.write(reg_pos_one_0, 1);
                        // write
                        call bloom_filter_2.write(reg_pos_two_0, 1);
                    }
                }
                else{
                    if((direction_0) == (1)){
                        // read
                        reg_val_one_0 := bloom_filter_1.read(bloom_filter_1, reg_pos_one_0);
                        // read
                        reg_val_two_0 := bloom_filter_2.read(bloom_filter_2, reg_pos_two_0);
                        if(((reg_val_one_0) != (1)) || ((reg_val_two_0) != (1))){
                            call drop_2();
                        }
                    }
                }
            }
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

// Action NoAction_3
procedure {:inline 1} NoAction_3()
{
}
procedure ULTIMATE.start()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.tcp.ack, _old_header_hdr.tcp.ackNo, _old_header_hdr.tcp.checksum, _old_header_hdr.tcp.cwr, _old_header_hdr.tcp.dataOffset, _old_header_hdr.tcp.dstPort, _old_header_hdr.tcp.ece, _old_header_hdr.tcp.fin, _old_header_hdr.tcp.psh, _old_header_hdr.tcp.res, _old_header_hdr.tcp.rst, _old_header_hdr.tcp.seqNo, _old_header_hdr.tcp.srcPort, _old_header_hdr.tcp.syn, _old_header_hdr.tcp.urg, _old_header_hdr.tcp.urgentPtr, _old_header_hdr.tcp.window, bloom_filter_1, bloom_filter_2, check_ports_0.action_run, direction_0, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.window, ipv4_lpm_0.action_run, isValid, reg_pos_one_0, reg_pos_two_0, reg_val_one_0, reg_val_two_0, standard_metadata.egress_spec, standard_metadata.ingress_port;
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
function bloom_filter_1.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} bloom_filter_1.write(index:int, value:int)
	modifies bloom_filter_1;
{
    bloom_filter_1[index] := value;
}
function bloom_filter_2.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} bloom_filter_2.write(index:int, value:int)
	modifies bloom_filter_2;
{
    bloom_filter_2[index] := value;
}

procedure check_ports_0.action_run.limit();
    ensures(check_ports_0.action_run==check_ports_0.action.set_direction);
	modifies check_ports_0.action_run;

// Table check_ports_0
procedure {:inline 1} check_ports_0.apply()
	modifies direction_0, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    var set_direction.dir:int;
    standard_metadata.ingress_port := standard_metadata.ingress_port;
    standard_metadata.egress_spec := standard_metadata.egress_spec;

    call check_ports_0.apply_table_entry();

    action_set_direction:
    if(check_ports_0.action_run == check_ports_0.action.set_direction){
        call set_direction(set_direction.dir);
    }
}

// Table Entry check_ports_0.apply_table_entry
procedure check_ports_0.apply_table_entry();

// Table Exit check_ports_0.apply_table_exit
procedure check_ports_0.apply_table_exit();
procedure clear_drop();
    ensures drop==false;
	modifies drop;
procedure clear_forward();
    ensures forward==false;
	modifies forward;

// Action compute_hashes
procedure {:inline 1} compute_hashes(ipAddr1:ip4Addr_t, ipAddr2:ip4Addr_t, port1:int, port2:int)
	modifies reg_pos_one_0, reg_pos_two_0;
{
    // hash
    assume(bsge.(reg_pos_one_0, 0) && bsge.(4096, reg_pos_one_0));
    havoc reg_pos_one_0;
    // hash
    assume(bsge.(reg_pos_two_0, 0) && bsge.(4096, reg_pos_two_0));
    havoc reg_pos_two_0;
}

// Action compute_hashes_2
procedure {:inline 1} compute_hashes_2(ipAddr1_1:ip4Addr_t, ipAddr2_1:ip4Addr_t, port1_1:int, port2_1:int)
	modifies reg_pos_one_0, reg_pos_two_0;
{
    // hash
    assume(bsge.(reg_pos_one_0, 0) && bsge.(4096, reg_pos_one_0));
    havoc reg_pos_one_0;
    // hash
    assume(bsge.(reg_pos_two_0, 0) && bsge.(4096, reg_pos_two_0));
    havoc reg_pos_two_0;
}

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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.tcp.ack, _old_header_hdr.tcp.ackNo, _old_header_hdr.tcp.checksum, _old_header_hdr.tcp.cwr, _old_header_hdr.tcp.dataOffset, _old_header_hdr.tcp.dstPort, _old_header_hdr.tcp.ece, _old_header_hdr.tcp.fin, _old_header_hdr.tcp.psh, _old_header_hdr.tcp.res, _old_header_hdr.tcp.rst, _old_header_hdr.tcp.seqNo, _old_header_hdr.tcp.srcPort, _old_header_hdr.tcp.syn, _old_header_hdr.tcp.urg, _old_header_hdr.tcp.urgentPtr, _old_header_hdr.tcp.window, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.window, isValid;
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
    isValid[hdr.tcp] := false;
    emit[hdr.tcp] := false;
    havoc hdr.tcp.srcPort;
    assume(0 <= hdr.tcp.srcPort && hdr.tcp.srcPort <= power_2_16() );
    _old_header_hdr.tcp.srcPort := hdr.tcp.srcPort;
    havoc hdr.tcp.dstPort;
    assume(0 <= hdr.tcp.dstPort && hdr.tcp.dstPort <= power_2_16() );
    _old_header_hdr.tcp.dstPort := hdr.tcp.dstPort;
    havoc hdr.tcp.seqNo;
    assume(0 <= hdr.tcp.seqNo && hdr.tcp.seqNo <= power_2_32() );
    _old_header_hdr.tcp.seqNo := hdr.tcp.seqNo;
    havoc hdr.tcp.ackNo;
    assume(0 <= hdr.tcp.ackNo && hdr.tcp.ackNo <= power_2_32() );
    _old_header_hdr.tcp.ackNo := hdr.tcp.ackNo;
    havoc hdr.tcp.dataOffset;
    assume(0 <= hdr.tcp.dataOffset && hdr.tcp.dataOffset <= power_2_4() );
    _old_header_hdr.tcp.dataOffset := hdr.tcp.dataOffset;
    havoc hdr.tcp.res;
    assume(0 <= hdr.tcp.res && hdr.tcp.res <= power_2_4() );
    _old_header_hdr.tcp.res := hdr.tcp.res;
    havoc hdr.tcp.cwr;
    assume(0 <= hdr.tcp.cwr && hdr.tcp.cwr <= power_2_1() );
    _old_header_hdr.tcp.cwr := hdr.tcp.cwr;
    havoc hdr.tcp.ece;
    assume(0 <= hdr.tcp.ece && hdr.tcp.ece <= power_2_1() );
    _old_header_hdr.tcp.ece := hdr.tcp.ece;
    havoc hdr.tcp.urg;
    assume(0 <= hdr.tcp.urg && hdr.tcp.urg <= power_2_1() );
    _old_header_hdr.tcp.urg := hdr.tcp.urg;
    havoc hdr.tcp.ack;
    assume(0 <= hdr.tcp.ack && hdr.tcp.ack <= power_2_1() );
    _old_header_hdr.tcp.ack := hdr.tcp.ack;
    havoc hdr.tcp.psh;
    assume(0 <= hdr.tcp.psh && hdr.tcp.psh <= power_2_1() );
    _old_header_hdr.tcp.psh := hdr.tcp.psh;
    havoc hdr.tcp.rst;
    assume(0 <= hdr.tcp.rst && hdr.tcp.rst <= power_2_1() );
    _old_header_hdr.tcp.rst := hdr.tcp.rst;
    havoc hdr.tcp.syn;
    assume(0 <= hdr.tcp.syn && hdr.tcp.syn <= power_2_1() );
    _old_header_hdr.tcp.syn := hdr.tcp.syn;
    havoc hdr.tcp.fin;
    assume(0 <= hdr.tcp.fin && hdr.tcp.fin <= power_2_1() );
    _old_header_hdr.tcp.fin := hdr.tcp.fin;
    havoc hdr.tcp.window;
    assume(0 <= hdr.tcp.window && hdr.tcp.window <= power_2_16() );
    _old_header_hdr.tcp.window := hdr.tcp.window;
    havoc hdr.tcp.checksum;
    assume(0 <= hdr.tcp.checksum && hdr.tcp.checksum <= power_2_16() );
    _old_header_hdr.tcp.checksum := hdr.tcp.checksum;
    havoc hdr.tcp.urgentPtr;
    assume(0 <= hdr.tcp.urgentPtr && hdr.tcp.urgentPtr <= power_2_16() );
    _old_header_hdr.tcp.urgentPtr := hdr.tcp.urgentPtr;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.tcp.ack, _old_header_hdr.tcp.ackNo, _old_header_hdr.tcp.checksum, _old_header_hdr.tcp.cwr, _old_header_hdr.tcp.dataOffset, _old_header_hdr.tcp.dstPort, _old_header_hdr.tcp.ece, _old_header_hdr.tcp.fin, _old_header_hdr.tcp.psh, _old_header_hdr.tcp.res, _old_header_hdr.tcp.rst, _old_header_hdr.tcp.seqNo, _old_header_hdr.tcp.srcPort, _old_header_hdr.tcp.syn, _old_header_hdr.tcp.urg, _old_header_hdr.tcp.urgentPtr, _old_header_hdr.tcp.window, bloom_filter_1, bloom_filter_2, direction_0, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.window, isValid, reg_pos_one_0, reg_pos_two_0, reg_val_one_0, reg_val_two_0, standard_metadata.egress_spec, standard_metadata.ingress_port;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.ipv4.diffserv, _old_header_hdr.ipv4.dstAddr, _old_header_hdr.ipv4.flags, _old_header_hdr.ipv4.fragOffset, _old_header_hdr.ipv4.hdrChecksum, _old_header_hdr.ipv4.identification, _old_header_hdr.ipv4.ihl, _old_header_hdr.ipv4.protocol, _old_header_hdr.ipv4.srcAddr, _old_header_hdr.ipv4.totalLen, _old_header_hdr.ipv4.ttl, _old_header_hdr.ipv4.version, _old_header_hdr.tcp.ack, _old_header_hdr.tcp.ackNo, _old_header_hdr.tcp.checksum, _old_header_hdr.tcp.cwr, _old_header_hdr.tcp.dataOffset, _old_header_hdr.tcp.dstPort, _old_header_hdr.tcp.ece, _old_header_hdr.tcp.fin, _old_header_hdr.tcp.psh, _old_header_hdr.tcp.res, _old_header_hdr.tcp.rst, _old_header_hdr.tcp.seqNo, _old_header_hdr.tcp.srcPort, _old_header_hdr.tcp.syn, _old_header_hdr.tcp.urg, _old_header_hdr.tcp.urgentPtr, _old_header_hdr.tcp.window, bloom_filter_1, bloom_filter_2, check_ports_0.action_run, direction_0, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.version, hdr.tcp.ack, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.cwr, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.ece, hdr.tcp.fin, hdr.tcp.psh, hdr.tcp.res, hdr.tcp.rst, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.syn, hdr.tcp.urg, hdr.tcp.urgentPtr, hdr.tcp.window, ipv4_lpm_0.action_run, isValid, reg_pos_one_0, reg_pos_two_0, reg_val_one_0, reg_val_two_0, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    call check_ports_0.action_run.limit();
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

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies isValid;
{
    call packet_in.extract(hdr.ipv4);
    if(hdr.ipv4.protocol == 6){
        call tcp();
    }
}
procedure reject();
    ensures drop==true;
	modifies drop;
procedure {:inline 1} setInvalid(header:Ref);
    ensures (isValid[header] == false);
	modifies isValid;
procedure {:inline 1} setValid(header:Ref);

// Action set_direction
procedure {:inline 1} set_direction(dir:int)
	modifies direction_0;
{
    direction_0 := dir;
}

//Parser State start
procedure {:inline 1} start()
	modifies isValid;
{
    call packet_in.extract(hdr.ethernet);
    if(hdr.ethernet.etherType == 2048){
        call parse_ipv4();
    }
}

//Parser State tcp
procedure {:inline 1} tcp()
	modifies isValid;
{
    call packet_in.extract(hdr.tcp);
    call accept();
}
