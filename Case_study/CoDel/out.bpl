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

// Struct routing_metadata_t

// Struct codel_t

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.valid:bool;
var hdr.ethernet.dst_addr:int;
var _old_hdr.ethernet.dst_addr:int;
var hdr.ethernet.src_addr:int;
var _old_hdr.ethernet.src_addr:int;
var hdr.ethernet.ethertype:int;
var _old_hdr.ethernet.ethertype:int;

// Header ipv4_t
var hdr.ipv4:Ref;
var hdr.ipv4.valid:bool;
var hdr.ipv4.version:int;
var _old_hdr.ipv4.version:int;
var hdr.ipv4.ihl:int;
var _old_hdr.ipv4.ihl:int;
var hdr.ipv4.diffserv:int;
var _old_hdr.ipv4.diffserv:int;
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
var hdr.ipv4.srcAddr:int;
var _old_hdr.ipv4.srcAddr:int;
var hdr.ipv4.dstAddr:int;
var _old_hdr.ipv4.dstAddr:int;

// Header queue_delay_t
var hdr.queue_delay:Ref;
var hdr.queue_delay.valid:bool;
var hdr.queue_delay.delay:int;
var _old_hdr.queue_delay.delay:int;

// Header tcp_t
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
var hdr.tcp.flags:int;
var _old_hdr.tcp.flags:int;
var hdr.tcp.window:int;
var _old_hdr.tcp.window:int;
var hdr.tcp.checksum:int;
var _old_hdr.tcp.checksum:int;
var hdr.tcp.urgentPtr:int;
var _old_hdr.tcp.urgentPtr:int;

// Header tcp_opt_t
var hdr.tcp_options:Ref;
var hdr.tcp_options.valid:bool;
var hdr.tcp_options.a:int;
var _old_hdr.tcp_options.a:int;
var hdr.tcp_options.b:int;
var _old_hdr.tcp_options.b:int;
var hdr.tcp_options.c:int;
var _old_hdr.tcp_options.c:int;

// Header udp_t
var hdr.udp:Ref;
var hdr.udp.valid:bool;
var hdr.udp.sourcePort:int;
var _old_hdr.udp.sourcePort:int;
var hdr.udp.destPort:int;
var _old_hdr.udp.destPort:int;
var hdr.udp.length_:int;
var _old_hdr.udp.length_:int;
var hdr.udp.checksum:int;
var _old_hdr.udp.checksum:int;

// Struct metadata
var meta.codel.drop_time:int;
var meta.codel.time_now:int;
var meta.codel.ok_to_drop:int;
var meta.codel.state_dropping:int;
var meta.codel.delta:int;
var meta.codel.time_since_last_dropping:int;
var meta.codel.drop_next:int;
var meta.codel.drop_cnt:int;
var meta.codel.last_drop_cnt:int;
var meta.codel.reset_drop_time:int;
var meta.codel.new_drop_time:int;
var meta.codel.new_drop_time_helper:int;
var meta.codel.queue_id:int;
var meta.routing_metadata.tcpLength:int;

// Register r_drop_count
var r_drop_count:[int]int;
const r_drop_count.size:int;
axiom r_drop_count.size == 64;

// Register r_drop_time
var r_drop_time:[int]int;
const r_drop_time.size:int;
axiom r_drop_time.size == 64;

// Register r_last_drop_count
var r_last_drop_count:[int]int;
const r_last_drop_count.size:int;
axiom r_last_drop_count.size == 64;

// Register r_next_drop
var r_next_drop:[int]int;
const r_next_drop.size:int;
axiom r_next_drop.size == 64;

// Register r_state_dropping
var r_state_dropping:[int]int;
const r_state_dropping.size:int;
axiom r_state_dropping.size == 64;
function {:inline true} add.bv48(left:int, right:int) : int{((left%power_2_48())+(right%power_2_48()))%power_2_48()}
function {:inline true} sub.bv32(left:int, right:int) : int{(power_2_32() + (left%power_2_32()) - (right%power_2_32()))%power_2_32()}
function {:inline true} sub.bv48(left:int, right:int) : int{(power_2_48() + (left%power_2_48()) - (right%power_2_48()))%power_2_48()}

// Table c_codel_0_t_codel_control_law Actionlist Declaration
type c_codel_0_t_codel_control_law.action;
const unique c_codel_0_t_codel_control_law.action.c_codel_0_a_codel_control_law_0 : c_codel_0_t_codel_control_law.action;
var c_codel_0_t_codel_control_law.action_run : c_codel_0_t_codel_control_law.action;
var c_codel_0_t_codel_control_law.hit : bool;
function {:inline true} bult.bv32(left:int, right:int) : bool{left < right}
function {:inline true} bsge.bv48(left:int, right:int) : bool{left >= right}
function {:inline true} add.bv32(left:int, right:int) : int{((left%power_2_32())+(right%power_2_32()))%power_2_32()}
function {:inline true} bugt.bv32(left:int, right:int) : bool{left > right}
function {:inline true} bult.bv48(left:int, right:int) : bool{left < right}
function {:inline true} bugt.bv16(left:int, right:int) : bool{left > right}
function {:inline true} add.bv16(left:int, right:int) : int{((left%power_2_16())+(right%power_2_16()))%power_2_16()}

// Table forwarding_0 Actionlist Declaration
type forwarding_0.action;
const unique forwarding_0.action.forward : forwarding_0.action;
var forwarding_0.action_run : forwarding_0.action;
var forwarding_0.hit : bool;
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

// Action NoAction_1
procedure {:inline 1} NoAction_1()
{
}
procedure ULTIMATE.start()
	modifies _old_hdr.ethernet.dst_addr, _old_hdr.ethernet.ethertype, _old_hdr.ethernet.src_addr, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.queue_delay.delay, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.flags, _old_hdr.tcp.res, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, _old_hdr.tcp_options.a, _old_hdr.tcp_options.b, _old_hdr.tcp_options.c, _old_hdr.udp.checksum, _old_hdr.udp.destPort, _old_hdr.udp.length_, _old_hdr.udp.sourcePort, c_codel_0_t_codel_control_law.action_run, drop, emit, forward, forwarding_0.action_run, hdr.ethernet.dst_addr, hdr.ethernet.ethertype, hdr.ethernet.src_addr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.queue_delay.delay, hdr.queue_delay.valid, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.flags, hdr.tcp.res, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, hdr.tcp_options.a, hdr.tcp_options.b, hdr.tcp_options.c, hdr.tcp_options.valid, hdr.udp.checksum, hdr.udp.destPort, hdr.udp.length_, hdr.udp.sourcePort, hdr.udp.valid, meta.codel.delta, meta.codel.drop_cnt, meta.codel.drop_next, meta.codel.drop_time, meta.codel.last_drop_cnt, meta.codel.new_drop_time, meta.codel.ok_to_drop, meta.codel.queue_id, meta.codel.reset_drop_time, meta.codel.state_dropping, meta.codel.time_now, meta.codel.time_since_last_dropping, meta.routing_metadata.tcpLength, r_drop_count, r_drop_time, r_last_drop_count, r_next_drop, r_state_dropping, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    call mainProcedure();
}

// Parser _parser_ParserImpl
procedure {:inline 1} _parser_ParserImpl()
	modifies drop, hdr.ethernet.valid, hdr.ipv4.valid, hdr.queue_delay.valid, hdr.tcp.valid, hdr.tcp_options.valid, hdr.udp.valid, meta.routing_metadata.tcpLength;
{
    call start();
}
procedure {:inline 1} accept()
{
}

// Action c_codel_0_a_codel_control_law_0
procedure {:inline 1} c_codel_0_a_codel_control_law_0(value:int)
	modifies meta.codel.drop_next, r_next_drop;
{
    meta.codel.drop_next := add.bv48(meta.codel.time_now, value);
    // write
    call r_next_drop.write(meta.codel.queue_id, meta.codel.drop_next);
}

// Action c_codel_0_a_codel_init_0
procedure {:inline 1} c_codel_0_a_codel_init_0()
	modifies meta.codel.drop_cnt, meta.codel.drop_next, meta.codel.drop_time, meta.codel.last_drop_cnt, meta.codel.new_drop_time, meta.codel.ok_to_drop, meta.codel.state_dropping, meta.codel.time_now;
{
    meta.codel.ok_to_drop := 0;
    meta.codel.time_now := add.bv48(standard_metadata.enq_timestamp, standard_metadata.deq_timedelta);
    meta.codel.new_drop_time := add.bv48(meta.codel.time_now, 100000);
    // read
    meta.codel.state_dropping := r_state_dropping.read(r_state_dropping, meta.codel.queue_id);
    // read
    meta.codel.drop_cnt := r_drop_count.read(r_drop_count, meta.codel.queue_id);
    // read
    meta.codel.last_drop_cnt := r_last_drop_count.read(r_last_drop_count, meta.codel.queue_id);
    // read
    meta.codel.drop_next := r_next_drop.read(r_next_drop, meta.codel.queue_id);
    // read
    meta.codel.drop_time := r_drop_time.read(r_drop_time, meta.codel.queue_id);
}

// Action c_codel_0_a_go_to_drop_state_0
procedure {:inline 1} c_codel_0_a_go_to_drop_state_0()
	modifies drop, meta.codel.delta, meta.codel.drop_cnt, meta.codel.time_since_last_dropping, r_drop_count, r_state_dropping;
{
    call mark_to_drop();
    // write
    call r_state_dropping.write(meta.codel.queue_id, 1);
    meta.codel.delta := sub.bv32(meta.codel.drop_cnt, meta.codel.last_drop_cnt);
    meta.codel.time_since_last_dropping := sub.bv48(meta.codel.time_now, meta.codel.drop_next);
    meta.codel.drop_cnt := 1;
    // write
    call r_drop_count.write(meta.codel.queue_id, 1);
}

procedure c_codel_0_t_codel_control_law.action_run.limit();
    ensures(c_codel_0_t_codel_control_law.action_run==c_codel_0_t_codel_control_law.action.c_codel_0_a_codel_control_law_0);
	modifies c_codel_0_t_codel_control_law.action_run;

// Table c_codel_0_t_codel_control_law
procedure {:inline 1} c_codel_0_t_codel_control_law.apply()
	modifies meta.codel.drop_cnt, meta.codel.drop_next, r_next_drop;
{
    var c_codel_0_a_codel_control_law_0.value:int;
    meta.codel.drop_cnt := meta.codel.drop_cnt;

    call c_codel_0_t_codel_control_law.apply_table_entry();

    action_c_codel_0_a_codel_control_law_0:
    if(c_codel_0_t_codel_control_law.action_run == c_codel_0_t_codel_control_law.action.c_codel_0_a_codel_control_law_0){
        call c_codel_0_a_codel_control_law_0(c_codel_0_a_codel_control_law_0.value);
    }
}

// Table Entry c_codel_0_t_codel_control_law.apply_table_entry
procedure c_codel_0_t_codel_control_law.apply_table_entry();

// Table Exit c_codel_0_t_codel_control_law.apply_table_exit
procedure c_codel_0_t_codel_control_law.apply_table_exit();
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
}

// Control egress
procedure {:inline 1} egress()
	modifies drop, hdr.queue_delay.delay, meta.codel.delta, meta.codel.drop_cnt, meta.codel.drop_next, meta.codel.drop_time, meta.codel.last_drop_cnt, meta.codel.new_drop_time, meta.codel.ok_to_drop, meta.codel.queue_id, meta.codel.reset_drop_time, meta.codel.state_dropping, meta.codel.time_now, meta.codel.time_since_last_dropping, meta.routing_metadata.tcpLength, r_drop_count, r_drop_time, r_last_drop_count, r_next_drop, r_state_dropping;
{
    if((standard_metadata.ingress_port == 1)){
        meta.codel.queue_id := standard_metadata.egress_port;
        call c_codel_0_a_codel_init_0();
        if(bult.bv32(standard_metadata.deq_timedelta, 5000)){
            meta.codel.reset_drop_time := 1;
        }
        if((meta.codel.reset_drop_time == 1)){
            // write
            call r_drop_time.write(meta.codel.queue_id, 0);
            meta.codel.drop_time := 0;
        }
        else{
            if((meta.codel.drop_time == 0)){
                // write
                call r_drop_time.write(meta.codel.queue_id, meta.codel.new_drop_time);
                meta.codel.drop_time := meta.codel.new_drop_time;
            }
            else{
                if(bsge.bv48(meta.codel.time_now, meta.codel.drop_time)){
                    meta.codel.ok_to_drop := 1;
                }
            }
        }
        if((meta.codel.state_dropping == 1)){
            if((meta.codel.ok_to_drop == 0)){
                // write
                call r_state_dropping.write(meta.codel.queue_id, 0);
            }
            else{
                if(bsge.bv48(meta.codel.time_now, meta.codel.drop_next)){
                    call mark_to_drop();
                    meta.codel.drop_cnt := add.bv32(meta.codel.drop_cnt, 1);
                    // write
                    call r_drop_count.write(meta.codel.queue_id, meta.codel.drop_cnt);
                    call c_codel_0_t_codel_control_law.apply();
                }
            }
        }
        else{
            if((meta.codel.ok_to_drop == 1)){
                call c_codel_0_a_go_to_drop_state_0();
                if((bugt.bv32(meta.codel.delta, 1)) && (bult.bv48(meta.codel.time_since_last_dropping, 1600000))){
                    // write
                    call r_drop_count.write(meta.codel.queue_id, meta.codel.delta);
                    meta.codel.drop_cnt := meta.codel.delta;
                }
                // write
                call r_last_drop_count.write(meta.codel.queue_id, meta.codel.drop_cnt);
                call c_codel_0_t_codel_control_law.apply();
            }
        }
    }
    if(bugt.bv16(hdr.ipv4.totalLen, 500)){
        if(hdr.queue_delay.valid){
            hdr.queue_delay.delay := standard_metadata.deq_timedelta;
        }
    }
    meta.routing_metadata.tcpLength := add.bv16(meta.routing_metadata.tcpLength, 65516);
}

// Action forward
procedure {:inline 1} forward(egress_spec:int, dst_mac:int)
	modifies forward, hdr.ethernet.dst_addr, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := egress_spec;
    forward := true;
    hdr.ethernet.dst_addr := dst_mac;
}

procedure forwarding_0.action_run.limit();
    ensures(forwarding_0.action_run==forwarding_0.action.forward);
	modifies forwarding_0.action_run;

// Table forwarding_0
procedure {:inline 1} forwarding_0.apply()
	modifies forward, hdr.ethernet.dst_addr, hdr.ipv4.dstAddr, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    var forward.dst_mac:int;
    var forward.egress_spec:int;
    standard_metadata.ingress_port := standard_metadata.ingress_port;
    hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;

    call forwarding_0.apply_table_entry();

    action_forward:
    if(forwarding_0.action_run == forwarding_0.action.forward){
        call forward(forward.egress_spec, forward.dst_mac);
    }
}

// Table Entry forwarding_0.apply_table_entry
procedure forwarding_0.apply_table_entry();

// Table Exit forwarding_0.apply_table_exit
procedure forwarding_0.apply_table_exit();
procedure {:inline 1} havocProcedure()
	modifies _old_hdr.ethernet.dst_addr, _old_hdr.ethernet.ethertype, _old_hdr.ethernet.src_addr, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.queue_delay.delay, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.flags, _old_hdr.tcp.res, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, _old_hdr.tcp_options.a, _old_hdr.tcp_options.b, _old_hdr.tcp_options.c, _old_hdr.udp.checksum, _old_hdr.udp.destPort, _old_hdr.udp.length_, _old_hdr.udp.sourcePort, emit, hdr.ethernet.dst_addr, hdr.ethernet.ethertype, hdr.ethernet.src_addr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.queue_delay.delay, hdr.queue_delay.valid, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.flags, hdr.tcp.res, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, hdr.tcp_options.a, hdr.tcp_options.b, hdr.tcp_options.c, hdr.tcp_options.valid, hdr.udp.checksum, hdr.udp.destPort, hdr.udp.length_, hdr.udp.sourcePort, hdr.udp.valid;
{
    hdr.ethernet.valid := false;
    emit[hdr.ethernet] := false;
    havoc hdr.ethernet.dst_addr;
    assume(0 <= hdr.ethernet.dst_addr && hdr.ethernet.dst_addr <= power_2_48() );
    _old_hdr.ethernet.dst_addr := hdr.ethernet.dst_addr;
    havoc hdr.ethernet.src_addr;
    assume(0 <= hdr.ethernet.src_addr && hdr.ethernet.src_addr <= power_2_48() );
    _old_hdr.ethernet.src_addr := hdr.ethernet.src_addr;
    havoc hdr.ethernet.ethertype;
    assume(0 <= hdr.ethernet.ethertype && hdr.ethernet.ethertype <= power_2_16() );
    _old_hdr.ethernet.ethertype := hdr.ethernet.ethertype;
    hdr.ipv4.valid := false;
    emit[hdr.ipv4] := false;
    havoc hdr.ipv4.version;
    assume(0 <= hdr.ipv4.version && hdr.ipv4.version <= power_2_4() );
    _old_hdr.ipv4.version := hdr.ipv4.version;
    havoc hdr.ipv4.ihl;
    assume(0 <= hdr.ipv4.ihl && hdr.ipv4.ihl <= power_2_4() );
    _old_hdr.ipv4.ihl := hdr.ipv4.ihl;
    havoc hdr.ipv4.diffserv;
    assume(0 <= hdr.ipv4.diffserv && hdr.ipv4.diffserv <= power_2_8() );
    _old_hdr.ipv4.diffserv := hdr.ipv4.diffserv;
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
    assume(0 <= hdr.ipv4.srcAddr && hdr.ipv4.srcAddr <= power_2_32() );
    _old_hdr.ipv4.srcAddr := hdr.ipv4.srcAddr;
    havoc hdr.ipv4.dstAddr;
    assume(0 <= hdr.ipv4.dstAddr && hdr.ipv4.dstAddr <= power_2_32() );
    _old_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    hdr.queue_delay.valid := false;
    emit[hdr.queue_delay] := false;
    havoc hdr.queue_delay.delay;
    assume(0 <= hdr.queue_delay.delay && hdr.queue_delay.delay <= power_2_32() );
    _old_hdr.queue_delay.delay := hdr.queue_delay.delay;
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
    havoc hdr.tcp.flags;
    assume(0 <= hdr.tcp.flags && hdr.tcp.flags <= power_2_8() );
    _old_hdr.tcp.flags := hdr.tcp.flags;
    havoc hdr.tcp.window;
    assume(0 <= hdr.tcp.window && hdr.tcp.window <= power_2_16() );
    _old_hdr.tcp.window := hdr.tcp.window;
    havoc hdr.tcp.checksum;
    assume(0 <= hdr.tcp.checksum && hdr.tcp.checksum <= power_2_16() );
    _old_hdr.tcp.checksum := hdr.tcp.checksum;
    havoc hdr.tcp.urgentPtr;
    assume(0 <= hdr.tcp.urgentPtr && hdr.tcp.urgentPtr <= power_2_16() );
    _old_hdr.tcp.urgentPtr := hdr.tcp.urgentPtr;
    hdr.tcp_options.valid := false;
    emit[hdr.tcp_options] := false;
    havoc hdr.tcp_options.a;
    assume(0 <= hdr.tcp_options.a && hdr.tcp_options.a <= power_2_32() );
    _old_hdr.tcp_options.a := hdr.tcp_options.a;
    havoc hdr.tcp_options.b;
    assume(0 <= hdr.tcp_options.b && hdr.tcp_options.b <= power_2_32() );
    _old_hdr.tcp_options.b := hdr.tcp_options.b;
    havoc hdr.tcp_options.c;
    assume(0 <= hdr.tcp_options.c && hdr.tcp_options.c <= power_2_32() );
    _old_hdr.tcp_options.c := hdr.tcp_options.c;
    hdr.udp.valid := false;
    emit[hdr.udp] := false;
    havoc hdr.udp.sourcePort;
    assume(0 <= hdr.udp.sourcePort && hdr.udp.sourcePort <= power_2_16() );
    _old_hdr.udp.sourcePort := hdr.udp.sourcePort;
    havoc hdr.udp.destPort;
    assume(0 <= hdr.udp.destPort && hdr.udp.destPort <= power_2_16() );
    _old_hdr.udp.destPort := hdr.udp.destPort;
    havoc hdr.udp.length_;
    assume(0 <= hdr.udp.length_ && hdr.udp.length_ <= power_2_16() );
    _old_hdr.udp.length_ := hdr.udp.length_;
    havoc hdr.udp.checksum;
    assume(0 <= hdr.udp.checksum && hdr.udp.checksum <= power_2_16() );
    _old_hdr.udp.checksum := hdr.udp.checksum;
}

// Control ingress
procedure {:inline 1} ingress()
	modifies forward, hdr.ethernet.dst_addr, hdr.ipv4.dstAddr, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    call forwarding_0.apply();
}
procedure {:inline 1} main()
	modifies _old_hdr.ethernet.dst_addr, _old_hdr.ethernet.ethertype, _old_hdr.ethernet.src_addr, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.queue_delay.delay, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.flags, _old_hdr.tcp.res, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, _old_hdr.tcp_options.a, _old_hdr.tcp_options.b, _old_hdr.tcp_options.c, _old_hdr.udp.checksum, _old_hdr.udp.destPort, _old_hdr.udp.length_, _old_hdr.udp.sourcePort, drop, emit, forward, hdr.ethernet.dst_addr, hdr.ethernet.ethertype, hdr.ethernet.src_addr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.queue_delay.delay, hdr.queue_delay.valid, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.flags, hdr.tcp.res, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, hdr.tcp_options.a, hdr.tcp_options.b, hdr.tcp_options.c, hdr.tcp_options.valid, hdr.udp.checksum, hdr.udp.destPort, hdr.udp.length_, hdr.udp.sourcePort, hdr.udp.valid, meta.codel.delta, meta.codel.drop_cnt, meta.codel.drop_next, meta.codel.drop_time, meta.codel.last_drop_cnt, meta.codel.new_drop_time, meta.codel.ok_to_drop, meta.codel.queue_id, meta.codel.reset_drop_time, meta.codel.state_dropping, meta.codel.time_now, meta.codel.time_since_last_dropping, meta.routing_metadata.tcpLength, r_drop_count, r_drop_time, r_last_drop_count, r_next_drop, r_state_dropping, standard_metadata.egress_spec, standard_metadata.ingress_port;
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
	modifies _old_hdr.ethernet.dst_addr, _old_hdr.ethernet.ethertype, _old_hdr.ethernet.src_addr, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.queue_delay.delay, _old_hdr.tcp.ackNo, _old_hdr.tcp.checksum, _old_hdr.tcp.dataOffset, _old_hdr.tcp.dstPort, _old_hdr.tcp.flags, _old_hdr.tcp.res, _old_hdr.tcp.seqNo, _old_hdr.tcp.srcPort, _old_hdr.tcp.urgentPtr, _old_hdr.tcp.window, _old_hdr.tcp_options.a, _old_hdr.tcp_options.b, _old_hdr.tcp_options.c, _old_hdr.udp.checksum, _old_hdr.udp.destPort, _old_hdr.udp.length_, _old_hdr.udp.sourcePort, c_codel_0_t_codel_control_law.action_run, drop, emit, forward, forwarding_0.action_run, hdr.ethernet.dst_addr, hdr.ethernet.ethertype, hdr.ethernet.src_addr, hdr.ethernet.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.queue_delay.delay, hdr.queue_delay.valid, hdr.tcp.ackNo, hdr.tcp.checksum, hdr.tcp.dataOffset, hdr.tcp.dstPort, hdr.tcp.flags, hdr.tcp.res, hdr.tcp.seqNo, hdr.tcp.srcPort, hdr.tcp.urgentPtr, hdr.tcp.valid, hdr.tcp.window, hdr.tcp_options.a, hdr.tcp_options.b, hdr.tcp_options.c, hdr.tcp_options.valid, hdr.udp.checksum, hdr.udp.destPort, hdr.udp.length_, hdr.udp.sourcePort, hdr.udp.valid, meta.codel.delta, meta.codel.drop_cnt, meta.codel.drop_next, meta.codel.drop_time, meta.codel.last_drop_cnt, meta.codel.new_drop_time, meta.codel.ok_to_drop, meta.codel.queue_id, meta.codel.reset_drop_time, meta.codel.state_dropping, meta.codel.time_now, meta.codel.time_since_last_dropping, meta.routing_metadata.tcpLength, r_drop_count, r_drop_time, r_last_drop_count, r_next_drop, r_state_dropping, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    call forwarding_0.action_run.limit();
    call c_codel_0_t_codel_control_law.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies hdr.ipv4.valid, hdr.queue_delay.valid, hdr.tcp.valid, hdr.tcp_options.valid, hdr.udp.valid, meta.routing_metadata.tcpLength;
{
    hdr.ipv4.valid := true;
    meta.routing_metadata.tcpLength := hdr.ipv4.totalLen;
    if(hdr.ipv4.protocol == 17){
        call parse_udp();
    }
    else if(hdr.ipv4.protocol == 6){
        call parse_tcp();
    }
}

//Parser State parse_payload
procedure {:inline 1} parse_payload()
	modifies hdr.queue_delay.valid, hdr.tcp_options.valid;
{
    hdr.tcp_options.valid := true;
    hdr.queue_delay.valid := true;
    call accept();
}

//Parser State parse_tcp
procedure {:inline 1} parse_tcp()
	modifies hdr.queue_delay.valid, hdr.tcp.valid, hdr.tcp_options.valid;
{
    hdr.tcp.valid := true;
    if(hdr.tcp.dataOffset == 8){
        call parse_payload();
    }
}

//Parser State parse_udp
procedure {:inline 1} parse_udp()
	modifies hdr.udp.valid;
{
    hdr.udp.valid := true;
    call accept();
}
function r_drop_count.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} r_drop_count.write(index:int, value:int)
	modifies r_drop_count;
{
    r_drop_count[index] := value;
}
function r_drop_time.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} r_drop_time.write(index:int, value:int)
	modifies r_drop_time;
{
    r_drop_time[index] := value;
}
function r_last_drop_count.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} r_last_drop_count.write(index:int, value:int)
	modifies r_last_drop_count;
{
    r_last_drop_count[index] := value;
}
function r_next_drop.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} r_next_drop.write(index:int, value:int)
	modifies r_next_drop;
{
    r_next_drop[index] := value;
}
function r_state_dropping.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} r_state_dropping.write(index:int, value:int)
	modifies r_state_dropping;
{
    r_state_dropping[index] := value;
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
	modifies hdr.ethernet.valid, hdr.ipv4.valid, hdr.queue_delay.valid, hdr.tcp.valid, hdr.tcp_options.valid, hdr.udp.valid, meta.routing_metadata.tcpLength;
{
    hdr.ethernet.valid := true;
    if(hdr.ethernet.ethertype == 2048){
        call parse_ipv4();
    }
}

// Control verifyChecksum
procedure {:inline 1} verifyChecksum()
{
}
