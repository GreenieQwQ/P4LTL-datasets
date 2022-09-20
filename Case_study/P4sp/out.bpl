//#LTLProperty: AP(!(meta.accepted == 1 && standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] <= meta.period && !drop)) U AP(standard_metadata.ingress_port == meta.secondary && standard_metadata.ingress_global_timestamp - protect_c_last_primary[0] > meta.period && !drop)
//#LTLFairness: [](AP(hdr.ethernet.etherType == 0xDD01))
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

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.valid:bool;
var hdr.ethernet.dstAddr:macAddr_t;
var _old_hdr.ethernet.dstAddr:macAddr_t;
var hdr.ethernet.srcAddr:macAddr_t;
var _old_hdr.ethernet.srcAddr:macAddr_t;
var hdr.ethernet.etherType:int;
var _old_hdr.ethernet.etherType:int;

// Header topology_discover_t
var hdr.topology:Ref;
var hdr.topology.valid:bool;
var hdr.topology.identifier:int;
var _old_hdr.topology.identifier:int;
var hdr.topology.port:int;
var _old_hdr.topology.port:int;
var hdr.topology.prefix:int;
var _old_hdr.topology.prefix:int;
var hdr.topology.mac:int;
var _old_hdr.topology.mac:int;

// Struct intrinsic_metadata_t

// Struct metadata
var meta.intrinsic_metadata.ingress_global_timestamp:int;
var meta.intrinsic_metadata.egress_global_timestamp:int;
var meta.intrinsic_metadata.lf_field_list:int;
var meta.intrinsic_metadata.mcast_grp:int;
var meta.intrinsic_metadata.resubmit_flag:int;
var meta.intrinsic_metadata.egress_rid:int;
var meta.intrinsic_metadata.recirculate_flag:int;
var meta.accepted:int;
var meta.period:int;
var meta.primary:egressSpec_t;
var meta.secondary:egressSpec_t;

// Table l2_c_l2_forwarding Actionlist Declaration
type l2_c_l2_forwarding.action;
const unique l2_c_l2_forwarding.action.l2_c_l2_forward_0 : l2_c_l2_forwarding.action;
var l2_c_l2_forwarding.action_run : l2_c_l2_forwarding.action;
var l2_c_l2_forwarding.hit : bool;
var protect_c_accepted:int;
var protect_c_time:int;
var protect_c_last:int;

// Register protect_c_last_primary
var protect_c_last_primary:[int]int;
const protect_c_last_primary.size:int;
axiom protect_c_last_primary.size == 48;

// Table protect_c_period Actionlist Declaration
type protect_c_period.action;
const unique protect_c_period.action.protect_c_set_period_0 : protect_c_period.action;
var protect_c_period.action_run : protect_c_period.action;
var protect_c_period.hit : bool;

// Table protect_c_port_config Actionlist Declaration
type protect_c_port_config.action;
const unique protect_c_port_config.action.protect_c_set_ports_0 : protect_c_port_config.action;
var protect_c_port_config.action_run : protect_c_port_config.action;
var protect_c_port_config.hit : bool;
function {:inline true} bugt.bv48(left:int, right:int) : bool{left < right}
function {:inline true} sub.bv48(left:int, right:int) : int{(power_2_48() + (left%power_2_48()) - (right%power_2_48()))%power_2_48()}
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

// Action NoAction_3
procedure {:inline 1} NoAction_3()
{
}
procedure ULTIMATE.start()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.topology.identifier, _old_hdr.topology.mac, _old_hdr.topology.port, _old_hdr.topology.prefix, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.topology.identifier, hdr.topology.mac, hdr.topology.port, hdr.topology.prefix, hdr.topology.valid, l2_c_l2_forwarding.action_run, meta.accepted, meta.period, meta.primary, meta.secondary, protect_c_accepted, protect_c_last, protect_c_last_primary, protect_c_period.action_run, protect_c_port_config.action_run, protect_c_time, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    call mainProcedure();
}

// Parser _parser_packetParser
procedure {:inline 1} _parser_packetParser()
	modifies drop, hdr.ethernet.valid, hdr.topology.valid;
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

// Control createChecksum
procedure {:inline 1} createChecksum()
{
}

// Control egress
procedure {:inline 1} egress()
{
}
procedure {:inline 1} havocProcedure()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.topology.identifier, _old_hdr.topology.mac, _old_hdr.topology.port, _old_hdr.topology.prefix, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.topology.identifier, hdr.topology.mac, hdr.topology.port, hdr.topology.prefix, hdr.topology.valid;
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
    hdr.topology.valid := false;
    emit[hdr.topology] := false;
    havoc hdr.topology.identifier;
    assume(0 <= hdr.topology.identifier && hdr.topology.identifier <= power_2_32() );
    _old_hdr.topology.identifier := hdr.topology.identifier;
    havoc hdr.topology.port;
    assume(0 <= hdr.topology.port && hdr.topology.port <= power_2_16() );
    _old_hdr.topology.port := hdr.topology.port;
    havoc hdr.topology.prefix;
    assume(0 <= hdr.topology.prefix && hdr.topology.prefix <= power_2_32() );
    _old_hdr.topology.prefix := hdr.topology.prefix;
    havoc hdr.topology.mac;
    assume(0 <= hdr.topology.mac && hdr.topology.mac <= power_2_48() );
    _old_hdr.topology.mac := hdr.topology.mac;
}

// Control ingress
procedure {:inline 1} ingress()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.topology.port, meta.accepted, meta.period, meta.primary, meta.secondary, protect_c_accepted, protect_c_last, protect_c_last_primary, protect_c_time, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    if((hdr.ethernet.etherType == 56576)){
        if((standard_metadata.ingress_port == 16)){
            standard_metadata.mcast_grp := 1;
        }
        else{
            standard_metadata.egress_spec := 16;
            forward := true;
            hdr.topology.port := standard_metadata.ingress_port;
        }
    }
    else{
        meta.accepted := 1;
        if((hdr.ethernet.etherType == 56577)){
            call protect_c_period.apply();
            call protect_c_port_config.apply();
            protect_c_accepted := 0;
            protect_c_time := standard_metadata.ingress_global_timestamp;
            if((standard_metadata.ingress_port == meta.primary)){
                // write
                call protect_c_last_primary.write(0, protect_c_time);
                protect_c_accepted := 1;
            }
            else{
                if((standard_metadata.ingress_port == meta.secondary)){
                    // read
                    protect_c_last := protect_c_last_primary.read(protect_c_last_primary, 0);
                    if(bugt.bv48(sub.bv48(protect_c_time, protect_c_last), meta.period)){
                        protect_c_accepted := 1;
                    }
                }
            }
            meta.accepted := protect_c_accepted;
        }
        if((meta.accepted == 1)){
            call l2_c_l2_forwarding.apply();
        }
    }
}

// Action l2_c_l2_broadcast_0
procedure {:inline 1} l2_c_l2_broadcast_0()
	modifies standard_metadata.mcast_grp;
{
    standard_metadata.mcast_grp := 1;
}

// Action l2_c_l2_forward_0
procedure {:inline 1} l2_c_l2_forward_0(e_port:egressSpec_t)
	modifies forward, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := e_port;
    forward := true;
}

procedure l2_c_l2_forwarding.action_run.limit();
    ensures(l2_c_l2_forwarding.action_run==l2_c_l2_forwarding.action.l2_c_l2_forward_0);
	modifies l2_c_l2_forwarding.action_run;

// Table l2_c_l2_forwarding
procedure {:inline 1} l2_c_l2_forwarding.apply()
	modifies forward, hdr.ethernet.dstAddr, standard_metadata.egress_spec;
{
    var l2_c_l2_forward_0.e_port:egressSpec_t;
    hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;

    call l2_c_l2_forwarding.apply_table_entry();

    action_l2_c_l2_forward_0:
    if(l2_c_l2_forwarding.action_run == l2_c_l2_forwarding.action.l2_c_l2_forward_0){
        call l2_c_l2_forward_0(l2_c_l2_forward_0.e_port);
    }
}

// Table Entry l2_c_l2_forwarding.apply_table_entry
procedure l2_c_l2_forwarding.apply_table_entry();

// Table Exit l2_c_l2_forwarding.apply_table_exit
procedure l2_c_l2_forwarding.apply_table_exit();
procedure {:inline 1} main()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.topology.identifier, _old_hdr.topology.mac, _old_hdr.topology.port, _old_hdr.topology.prefix, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.topology.identifier, hdr.topology.mac, hdr.topology.port, hdr.topology.prefix, hdr.topology.valid, meta.accepted, meta.period, meta.primary, meta.secondary, protect_c_accepted, protect_c_last, protect_c_last_primary, protect_c_time, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    call havocProcedure();
    call clear_drop();
    call clear_forward();
    call _parser_packetParser();
    call verifyChecksum();
    call ingress();
    call egress();
    call createChecksum();
}
procedure mainProcedure()
	modifies _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.topology.identifier, _old_hdr.topology.mac, _old_hdr.topology.port, _old_hdr.topology.prefix, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.topology.identifier, hdr.topology.mac, hdr.topology.port, hdr.topology.prefix, hdr.topology.valid, l2_c_l2_forwarding.action_run, meta.accepted, meta.period, meta.primary, meta.secondary, protect_c_accepted, protect_c_last, protect_c_last_primary, protect_c_period.action_run, protect_c_port_config.action_run, protect_c_time, standard_metadata.egress_spec, standard_metadata.mcast_grp;
{
    call protect_c_port_config.action_run.limit();
    call protect_c_period.action_run.limit();
    call l2_c_l2_forwarding.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;

//Parser State parse_topology_discover
procedure {:inline 1} parse_topology_discover()
	modifies hdr.topology.valid;
{
    hdr.topology.valid := true;
    call accept();
}
function protect_c_last_primary.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} protect_c_last_primary.write(index:int, value:int)
	modifies protect_c_last_primary;
{
    protect_c_last_primary[index] := value;
}

procedure protect_c_period.action_run.limit();
    ensures(protect_c_period.action_run==protect_c_period.action.protect_c_set_period_0);
	modifies protect_c_period.action_run;

// Table protect_c_period
procedure {:inline 1} protect_c_period.apply()
	modifies hdr.ethernet.srcAddr, meta.period;
{
    var protect_c_set_period_0.period:int;
    hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;

    call protect_c_period.apply_table_entry();

    action_protect_c_set_period_0:
    if(protect_c_period.action_run == protect_c_period.action.protect_c_set_period_0){
        call protect_c_set_period_0(protect_c_set_period_0.period);
    }
}

// Table Entry protect_c_period.apply_table_entry
procedure protect_c_period.apply_table_entry();

// Table Exit protect_c_period.apply_table_exit
procedure protect_c_period.apply_table_exit();

procedure protect_c_port_config.action_run.limit();
    ensures(protect_c_port_config.action_run==protect_c_port_config.action.protect_c_set_ports_0);
	modifies protect_c_port_config.action_run;

// Table protect_c_port_config
procedure {:inline 1} protect_c_port_config.apply()
	modifies hdr.ethernet.dstAddr, meta.primary, meta.secondary;
{
    var protect_c_set_ports_0.secondary:egressSpec_t;
    var protect_c_set_ports_0.primary:egressSpec_t;
    hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;

    call protect_c_port_config.apply_table_entry();

    action_protect_c_set_ports_0:
    if(protect_c_port_config.action_run == protect_c_port_config.action.protect_c_set_ports_0){
        call protect_c_set_ports_0(protect_c_set_ports_0.primary, protect_c_set_ports_0.secondary);
    }
}

// Table Entry protect_c_port_config.apply_table_entry
procedure protect_c_port_config.apply_table_entry();

// Table Exit protect_c_port_config.apply_table_exit
procedure protect_c_port_config.apply_table_exit();

// Action protect_c_set_period_0
procedure {:inline 1} protect_c_set_period_0(period:int)
	modifies meta.period;
{
    meta.period := period;
}

// Action protect_c_set_ports_0
procedure {:inline 1} protect_c_set_ports_0(primary:egressSpec_t, secondary:egressSpec_t)
	modifies meta.primary, meta.secondary;
{
    meta.primary := primary;
    meta.secondary := secondary;
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
	modifies hdr.ethernet.valid, hdr.topology.valid;
{
    hdr.ethernet.valid := true;
    if(hdr.ethernet.etherType == 56576){
        call parse_topology_discover();
    }
}

// Control verifyChecksum
procedure {:inline 1} verifyChecksum()
{
}
