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
type PortId_t = int;

// Struct standard_metadata_t
var standard_metadata.ingress_port:PortId_t;
var standard_metadata.egress_spec:PortId_t;
var standard_metadata.egress_port:PortId_t;
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

// Struct intrinsic_metadata_t

// Struct ingress_metadata_t

// Struct metadata
var meta.local_metadata.starting_port:int;
var meta.local_metadata.all_ports:int;
var meta.local_metadata.out_port_xor:int;
var meta.local_metadata.pkt_curr:int;
var meta.local_metadata.pkt_par:int;
var meta.local_metadata.out_port:int;
var meta.local_metadata.if_out_failed:int;
var meta.local_metadata.pkt_start:int;
var meta.local_metadata.is_dest:int;
var meta.local_metadata.is_completed:int;

// Struct headers

// Header header_dfs_t
var hdr.dfsTag:Ref;
var hdr.dfsTag.valid:bool;
var hdr.dfsTag.pkt_v1_curr:int;
var _old_hdr.dfsTag.pkt_v1_curr:int;
var hdr.dfsTag.pkt_v1_par:int;
var _old_hdr.dfsTag.pkt_v1_par:int;
var hdr.dfsTag.pkt_v2_curr:int;
var _old_hdr.dfsTag.pkt_v2_curr:int;
var hdr.dfsTag.pkt_v2_par:int;
var _old_hdr.dfsTag.pkt_v2_par:int;
var hdr.dfsTag.pkt_v3_curr:int;
var _old_hdr.dfsTag.pkt_v3_curr:int;
var hdr.dfsTag.pkt_v3_par:int;
var _old_hdr.dfsTag.pkt_v3_par:int;
var hdr.dfsTag.pkt_v4_curr:int;
var _old_hdr.dfsTag.pkt_v4_curr:int;
var hdr.dfsTag.pkt_v4_par:int;
var _old_hdr.dfsTag.pkt_v4_par:int;

// Header header_ff_tags_t
var hdr.ff_tags:Ref;
var hdr.ff_tags.valid:bool;
var hdr.ff_tags.preamble:int;
var _old_hdr.ff_tags.preamble:int;
var hdr.ff_tags.shortest_path:int;
var _old_hdr.ff_tags.shortest_path:int;
var hdr.ff_tags.path_length:int;
var _old_hdr.ff_tags.path_length:int;
var hdr.ff_tags.is_edge:int;
var _old_hdr.ff_tags.is_edge:int;
var hdr.ff_tags.dfs_start:int;
var _old_hdr.ff_tags.dfs_start:int;

// Register all_ports_status
var all_ports_status:[int]int;
const all_ports_status.size:int;
axiom all_ports_status.size == 1;
function {:inline true} add.bv8(left:int, right:int) : int{((left%power_2_8())+(right%power_2_8()))%power_2_8()}

// Table default_route_0 Actionlist Declaration
type default_route_0.action;
const unique default_route_0.action.set_default_route : default_route_0.action;
var default_route_0.action_run : default_route_0.action;
var default_route_0.hit : bool;

// Table fwd_parent_0 Actionlist Declaration
type fwd_parent_0.action;
const unique fwd_parent_0.action.towards_parent : fwd_parent_0.action;
var fwd_parent_0.action_run : fwd_parent_0.action;
var fwd_parent_0.hit : bool;

// Table fwd_pkt_0 Actionlist Declaration
type fwd_pkt_0.action;
const unique fwd_pkt_0.action.fwd : fwd_pkt_0.action;
var fwd_pkt_0.action_run : fwd_pkt_0.action;
var fwd_pkt_0.hit : bool;

// Table set_out_port_0 Actionlist Declaration
type set_out_port_0.action;
const unique set_out_port_0.action.set_out_meta : set_out_port_0.action;
var set_out_port_0.action_run : set_out_port_0.action;
var set_out_port_0.hit : bool;

// Table start_dfs_0 Actionlist Declaration
type start_dfs_0.action;
const unique start_dfs_0.action.set_dfs_tags : start_dfs_0.action;
var start_dfs_0.action_run : start_dfs_0.action;
var start_dfs_0.hit : bool;
function {:inline true} bxor.bv32(left:int, right:int) : int{
    bxor( ((left-left%power_2_0())/power_2_0())%2, ((right-right%power_2_0())/power_2_0())%2 ) * power_2_0() +
    bxor( ((left-left%power_2_1())/power_2_1())%2, ((right-right%power_2_1())/power_2_1())%2 ) * power_2_1() +
    bxor( ((left-left%power_2_2())/power_2_2())%2, ((right-right%power_2_2())/power_2_2())%2 ) * power_2_2() +
    bxor( ((left-left%power_2_3())/power_2_3())%2, ((right-right%power_2_3())/power_2_3())%2 ) * power_2_3() +
    bxor( ((left-left%power_2_4())/power_2_4())%2, ((right-right%power_2_4())/power_2_4())%2 ) * power_2_4() +
    bxor( ((left-left%power_2_5())/power_2_5())%2, ((right-right%power_2_5())/power_2_5())%2 ) * power_2_5() +
    bxor( ((left-left%power_2_6())/power_2_6())%2, ((right-right%power_2_6())/power_2_6())%2 ) * power_2_6() +
    bxor( ((left-left%power_2_7())/power_2_7())%2, ((right-right%power_2_7())/power_2_7())%2 ) * power_2_7() +
    bxor( ((left-left%power_2_8())/power_2_8())%2, ((right-right%power_2_8())/power_2_8())%2 ) * power_2_8() +
    bxor( ((left-left%power_2_9())/power_2_9())%2, ((right-right%power_2_9())/power_2_9())%2 ) * power_2_9() +
    bxor( ((left-left%power_2_10())/power_2_10())%2, ((right-right%power_2_10())/power_2_10())%2 ) * power_2_10() +
    bxor( ((left-left%power_2_11())/power_2_11())%2, ((right-right%power_2_11())/power_2_11())%2 ) * power_2_11() +
    bxor( ((left-left%power_2_12())/power_2_12())%2, ((right-right%power_2_12())/power_2_12())%2 ) * power_2_12() +
    bxor( ((left-left%power_2_13())/power_2_13())%2, ((right-right%power_2_13())/power_2_13())%2 ) * power_2_13() +
    bxor( ((left-left%power_2_14())/power_2_14())%2, ((right-right%power_2_14())/power_2_14())%2 ) * power_2_14() +
    bxor( ((left-left%power_2_15())/power_2_15())%2, ((right-right%power_2_15())/power_2_15())%2 ) * power_2_15() +
    bxor( ((left-left%power_2_16())/power_2_16())%2, ((right-right%power_2_16())/power_2_16())%2 ) * power_2_16() +
    bxor( ((left-left%power_2_17())/power_2_17())%2, ((right-right%power_2_17())/power_2_17())%2 ) * power_2_17() +
    bxor( ((left-left%power_2_18())/power_2_18())%2, ((right-right%power_2_18())/power_2_18())%2 ) * power_2_18() +
    bxor( ((left-left%power_2_19())/power_2_19())%2, ((right-right%power_2_19())/power_2_19())%2 ) * power_2_19() +
    bxor( ((left-left%power_2_20())/power_2_20())%2, ((right-right%power_2_20())/power_2_20())%2 ) * power_2_20() +
    bxor( ((left-left%power_2_21())/power_2_21())%2, ((right-right%power_2_21())/power_2_21())%2 ) * power_2_21() +
    bxor( ((left-left%power_2_22())/power_2_22())%2, ((right-right%power_2_22())/power_2_22())%2 ) * power_2_22() +
    bxor( ((left-left%power_2_23())/power_2_23())%2, ((right-right%power_2_23())/power_2_23())%2 ) * power_2_23() +
    bxor( ((left-left%power_2_24())/power_2_24())%2, ((right-right%power_2_24())/power_2_24())%2 ) * power_2_24() +
    bxor( ((left-left%power_2_25())/power_2_25())%2, ((right-right%power_2_25())/power_2_25())%2 ) * power_2_25() +
    bxor( ((left-left%power_2_26())/power_2_26())%2, ((right-right%power_2_26())/power_2_26())%2 ) * power_2_26() +
    bxor( ((left-left%power_2_27())/power_2_27())%2, ((right-right%power_2_27())/power_2_27())%2 ) * power_2_27() +
    bxor( ((left-left%power_2_28())/power_2_28())%2, ((right-right%power_2_28())/power_2_28())%2 ) * power_2_28() +
    bxor( ((left-left%power_2_29())/power_2_29())%2, ((right-right%power_2_29())/power_2_29())%2 ) * power_2_29() +
    bxor( ((left-left%power_2_30())/power_2_30())%2, ((right-right%power_2_30())/power_2_30())%2 ) * power_2_30() +
    bxor( ((left-left%power_2_31())/power_2_31())%2, ((right-right%power_2_31())/power_2_31())%2 ) * power_2_31()
}

// Table _check_out_failed Actionlist Declaration
type _check_out_failed.action;
const unique _check_out_failed.action._skip_failures_0 : _check_out_failed.action;
var _check_out_failed.action_run : _check_out_failed.action;
var _check_out_failed.hit : bool;

// Table _check_outport_status Actionlist Declaration
type _check_outport_status.action;
const unique _check_outport_status.action._xor_outport_0 : _check_outport_status.action;
var _check_outport_status.action_run : _check_outport_status.action;
var _check_outport_status.hit : bool;

// Table _curr_eq_ingress Actionlist Declaration
type _curr_eq_ingress.action;
const unique _curr_eq_ingress.action._set_next_port_0 : _curr_eq_ingress.action;
var _curr_eq_ingress.action_run : _curr_eq_ingress.action;
var _curr_eq_ingress.hit : bool;

// Table _curr_eq_zero Actionlist Declaration
type _curr_eq_zero.action;
const unique _curr_eq_zero.action._set_parent_0 : _curr_eq_zero.action;
var _curr_eq_zero.action_run : _curr_eq_zero.action;
var _curr_eq_zero.hit : bool;

// Table _hit_depth Actionlist Declaration
type _hit_depth.action;
const unique _hit_depth.action._send_on_parent_0 : _hit_depth.action;
var _hit_depth.action_run : _hit_depth.action;
var _hit_depth.hit : bool;

// Table _if_status Actionlist Declaration
type _if_status.action;
const unique _if_status.action._set_if_status_0 : _if_status.action;
var _if_status.action_run : _if_status.action;
var _if_status.hit : bool;

// Table _jump_to_next Actionlist Declaration
type _jump_to_next.action;
const unique _jump_to_next.action._skip_parent_0 : _jump_to_next.action;
var _jump_to_next.action_run : _jump_to_next.action;
var _jump_to_next.hit : bool;

// Table _out_eq_zero Actionlist Declaration
type _out_eq_zero.action;
const unique _out_eq_zero.action._start_from_one_0 : _out_eq_zero.action;
var _out_eq_zero.action_run : _out_eq_zero.action;
var _out_eq_zero.hit : bool;

// Table _set_egress_port Actionlist Declaration
type _set_egress_port.action;
const unique _set_egress_port.action._starting_port_meta_0 : _set_egress_port.action;
var _set_egress_port.action_run : _set_egress_port.action;
var _set_egress_port.hit : bool;

// Table _set_parent_out Actionlist Declaration
type _set_parent_out.action;
const unique _set_parent_out.action._send_to_parent_0 : _set_parent_out.action;
var _set_parent_out.action_run : _set_parent_out.action;
var _set_parent_out.hit : bool;

// Table _to_parent Actionlist Declaration
type _to_parent.action;
const unique _to_parent.action._outport_to_parent_0 : _to_parent.action;
var _to_parent.action_run : _to_parent.action;
var _to_parent.hit : bool;

// Table _try_next Actionlist Declaration
type _try_next.action;
const unique _try_next.action._next_outport_0 : _try_next.action;
var _try_next.action_run : _try_next.action;
var _try_next.hit : bool;
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
function {:inline true} power_2_51 () : int{power_2_50()*power_2_1() }
function {:inline true} power_2_52 () : int{power_2_50()*power_2_2() }
function {:inline true} power_2_53 () : int{power_2_50()*power_2_3() }
function {:inline true} power_2_54 () : int{power_2_50()*power_2_4() }
function {:inline true} power_2_55 () : int{power_2_50()*power_2_5() }
function {:inline true} power_2_56 () : int{power_2_50()*power_2_6() }
function {:inline true} power_2_57 () : int{power_2_50()*power_2_7() }
function {:inline true} power_2_58 () : int{power_2_50()*power_2_8() }
function {:inline true} power_2_59 () : int{power_2_50()*power_2_9() }
function {:inline true} power_2_60 () : int{power_2_50()*power_2_10() }
function {:inline true} power_2_61 () : int{power_2_50()*power_2_11() }
function {:inline true} power_2_62 () : int{power_2_50()*power_2_12() }
function {:inline true} power_2_63 () : int{power_2_50()*power_2_13() }
function {:inline true} power_2_64 () : int{power_2_50()*power_2_14() }
function {:inline true} band(left:int, right:int) : int{((left+right)-(left+right)%2)/2}
function {:inline true} bxor(left:int, right:int) : int{(left+right)%2}
function {:inline true} bor(left:int, right:int) : int{(left+right)%2+((left+right)-((left+right)%2))/2}
function {:inline true} bnot(num:int) : int{1-num%2}

// Action NoAction_0
procedure {:inline 1} NoAction_0()
{
}

// Action NoAction_18
procedure {:inline 1} NoAction_18()
{
}

// Action NoAction_19
procedure {:inline 1} NoAction_19()
{
}

// Action NoAction_20
procedure {:inline 1} NoAction_20()
{
}

// Action NoAction_21
procedure {:inline 1} NoAction_21()
{
}

// Action NoAction_22
procedure {:inline 1} NoAction_22()
{
}

// Action NoAction_23
procedure {:inline 1} NoAction_23()
{
}

// Action NoAction_24
procedure {:inline 1} NoAction_24()
{
}

// Action NoAction_25
procedure {:inline 1} NoAction_25()
{
}

// Action NoAction_26
procedure {:inline 1} NoAction_26()
{
}

// Action NoAction_27
procedure {:inline 1} NoAction_27()
{
}

// Action NoAction_28
procedure {:inline 1} NoAction_28()
{
}

// Action NoAction_29
procedure {:inline 1} NoAction_29()
{
}

// Action NoAction_30
procedure {:inline 1} NoAction_30()
{
}

// Action NoAction_31
procedure {:inline 1} NoAction_31()
{
}

// Action NoAction_32
procedure {:inline 1} NoAction_32()
{
}

// Action NoAction_33
procedure {:inline 1} NoAction_33()
{
}
procedure ULTIMATE.start()
	modifies _check_out_failed.action_run, _check_outport_status.action_run, _curr_eq_ingress.action_run, _curr_eq_zero.action_run, _hit_depth.action_run, _if_status.action_run, _jump_to_next.action_run, _old_hdr.dfsTag.pkt_v1_curr, _old_hdr.dfsTag.pkt_v1_par, _old_hdr.dfsTag.pkt_v2_curr, _old_hdr.dfsTag.pkt_v2_par, _old_hdr.dfsTag.pkt_v3_curr, _old_hdr.dfsTag.pkt_v3_par, _old_hdr.dfsTag.pkt_v4_curr, _old_hdr.dfsTag.pkt_v4_par, _old_hdr.ff_tags.dfs_start, _old_hdr.ff_tags.is_edge, _old_hdr.ff_tags.path_length, _old_hdr.ff_tags.preamble, _old_hdr.ff_tags.shortest_path, _out_eq_zero.action_run, _set_egress_port.action_run, _set_parent_out.action_run, _to_parent.action_run, _try_next.action_run, default_route_0.action_run, drop, emit, forward, fwd_parent_0.action_run, fwd_pkt_0.action_run, hdr.dfsTag.pkt_v1_curr, hdr.dfsTag.pkt_v1_par, hdr.dfsTag.pkt_v2_curr, hdr.dfsTag.pkt_v2_par, hdr.dfsTag.pkt_v3_curr, hdr.dfsTag.pkt_v3_par, hdr.dfsTag.pkt_v4_curr, hdr.dfsTag.pkt_v4_par, hdr.dfsTag.valid, hdr.ff_tags.dfs_start, hdr.ff_tags.is_edge, hdr.ff_tags.path_length, hdr.ff_tags.preamble, hdr.ff_tags.shortest_path, hdr.ff_tags.valid, meta.local_metadata.all_ports, meta.local_metadata.if_out_failed, meta.local_metadata.is_completed, meta.local_metadata.out_port, meta.local_metadata.out_port_xor, meta.local_metadata.pkt_curr, meta.local_metadata.pkt_par, meta.local_metadata.pkt_start, meta.local_metadata.starting_port, set_out_port_0.action_run, standard_metadata.egress_spec, standard_metadata.ingress_port, start_dfs_0.action_run;
{
    call mainProcedure();
}

procedure _check_out_failed.action_run.limit();
    ensures(_check_out_failed.action_run==_check_out_failed.action._skip_failures_0);
	modifies _check_out_failed.action_run;

// Table _check_out_failed
procedure {:inline 1} _check_out_failed.apply()
	modifies meta.local_metadata.all_ports, meta.local_metadata.out_port, meta.local_metadata.starting_port;
{
    var _skip_failures_0._working:int;
    meta.local_metadata.starting_port := meta.local_metadata.starting_port;
    meta.local_metadata.all_ports := meta.local_metadata.all_ports;

    call _check_out_failed.apply_table_entry();

    action__skip_failures_0:
    if(_check_out_failed.action_run == _check_out_failed.action._skip_failures_0){
        call _skip_failures_0(_skip_failures_0._working);
    }
}

// Table Entry _check_out_failed.apply_table_entry
procedure _check_out_failed.apply_table_entry();

// Table Exit _check_out_failed.apply_table_exit
procedure _check_out_failed.apply_table_exit();

procedure _check_outport_status.action_run.limit();
    ensures(_check_outport_status.action_run==_check_outport_status.action._xor_outport_0);
	modifies _check_outport_status.action_run;

// Table _check_outport_status
procedure {:inline 1} _check_outport_status.apply()
	modifies meta.local_metadata.all_ports, meta.local_metadata.out_port_xor;
{
    var _xor_outport_0._all_ports:int;

    call _check_outport_status.apply_table_entry();

    action__xor_outport_0:
    if(_check_outport_status.action_run == _check_outport_status.action._xor_outport_0){
        call _xor_outport_0(_xor_outport_0._all_ports);
    }
}

// Table Entry _check_outport_status.apply_table_entry
procedure _check_outport_status.apply_table_entry();

// Table Exit _check_outport_status.apply_table_exit
procedure _check_outport_status.apply_table_exit();

procedure _curr_eq_ingress.action_run.limit();
    ensures(_curr_eq_ingress.action_run==_curr_eq_ingress.action._set_next_port_0);
	modifies _curr_eq_ingress.action_run;

// Table _curr_eq_ingress
procedure {:inline 1} _curr_eq_ingress.apply()
	modifies meta.local_metadata.out_port, meta.local_metadata.pkt_curr;
{

    call _curr_eq_ingress.apply_table_entry();

    action__set_next_port_0:
    if(_curr_eq_ingress.action_run == _curr_eq_ingress.action._set_next_port_0){
        call _set_next_port_0();
    }
}

// Table Entry _curr_eq_ingress.apply_table_entry
procedure _curr_eq_ingress.apply_table_entry();

// Table Exit _curr_eq_ingress.apply_table_exit
procedure _curr_eq_ingress.apply_table_exit();

procedure _curr_eq_zero.action_run.limit();
    ensures(_curr_eq_zero.action_run==_curr_eq_zero.action._set_parent_0);
	modifies _curr_eq_zero.action_run;

// Table _curr_eq_zero
procedure {:inline 1} _curr_eq_zero.apply()
	modifies hdr.dfsTag.pkt_v1_par, meta.local_metadata.pkt_par;
{

    call _curr_eq_zero.apply_table_entry();

    action__set_parent_0:
    if(_curr_eq_zero.action_run == _curr_eq_zero.action._set_parent_0){
        call _set_parent_0();
    }
}

// Table Entry _curr_eq_zero.apply_table_entry
procedure _curr_eq_zero.apply_table_entry();

// Table Exit _curr_eq_zero.apply_table_exit
procedure _curr_eq_zero.apply_table_exit();

procedure _hit_depth.action_run.limit();
    ensures(_hit_depth.action_run==_hit_depth.action._send_on_parent_0);
	modifies _hit_depth.action_run;

// Table _hit_depth
procedure {:inline 1} _hit_depth.apply()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{

    call _hit_depth.apply_table_entry();

    action__send_on_parent_0:
    if(_hit_depth.action_run == _hit_depth.action._send_on_parent_0){
        call _send_on_parent_0();
    }
}

// Table Entry _hit_depth.apply_table_entry
procedure _hit_depth.apply_table_entry();

// Table Exit _hit_depth.apply_table_exit
procedure _hit_depth.apply_table_exit();

procedure _if_status.action_run.limit();
    ensures(_if_status.action_run==_if_status.action._set_if_status_0);
	modifies _if_status.action_run;

// Table _if_status
procedure {:inline 1} _if_status.apply()
	modifies meta.local_metadata.if_out_failed, meta.local_metadata.out_port_xor, meta.local_metadata.starting_port;
{
    var _set_if_status_0._value:int;
    meta.local_metadata.starting_port := meta.local_metadata.starting_port;
    meta.local_metadata.out_port_xor := meta.local_metadata.out_port_xor;

    call _if_status.apply_table_entry();

    action__set_if_status_0:
    if(_if_status.action_run == _if_status.action._set_if_status_0){
        call _set_if_status_0(_set_if_status_0._value);
    }
}

// Table Entry _if_status.apply_table_entry
procedure _if_status.apply_table_entry();

// Table Exit _if_status.apply_table_exit
procedure _if_status.apply_table_exit();

procedure _jump_to_next.action_run.limit();
    ensures(_jump_to_next.action_run==_jump_to_next.action._skip_parent_0);
	modifies _jump_to_next.action_run;

// Table _jump_to_next
procedure {:inline 1} _jump_to_next.apply()
	modifies meta.local_metadata.out_port;
{

    call _jump_to_next.apply_table_entry();

    action__skip_parent_0:
    if(_jump_to_next.action_run == _jump_to_next.action._skip_parent_0){
        call _skip_parent_0();
    }
}

// Table Entry _jump_to_next.apply_table_entry
procedure _jump_to_next.apply_table_entry();

// Table Exit _jump_to_next.apply_table_exit
procedure _jump_to_next.apply_table_exit();

// Action _next_outport_0
procedure {:inline 1} _next_outport_0()
	modifies meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := add.bv8(meta.local_metadata.out_port, 1);
}

procedure _out_eq_zero.action_run.limit();
    ensures(_out_eq_zero.action_run==_out_eq_zero.action._start_from_one_0);
	modifies _out_eq_zero.action_run;

// Table _out_eq_zero
procedure {:inline 1} _out_eq_zero.apply()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{

    call _out_eq_zero.apply_table_entry();

    action__start_from_one_0:
    if(_out_eq_zero.action_run == _out_eq_zero.action._start_from_one_0){
        call _start_from_one_0();
    }
}

// Table Entry _out_eq_zero.apply_table_entry
procedure _out_eq_zero.apply_table_entry();

// Table Exit _out_eq_zero.apply_table_exit
procedure _out_eq_zero.apply_table_exit();

// Action _outport_to_parent_0
procedure {:inline 1} _outport_to_parent_0()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := meta.local_metadata.pkt_par;
    meta.local_metadata.is_completed := 1;
}

// Parser _parser_ParserImpl
procedure {:inline 1} _parser_ParserImpl()
	modifies drop, hdr.dfsTag.valid, hdr.ff_tags.valid, meta.local_metadata.pkt_curr, meta.local_metadata.pkt_par, meta.local_metadata.pkt_start;
{
    call start();
}

// Action _send_on_parent_0
procedure {:inline 1} _send_on_parent_0()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := meta.local_metadata.pkt_par;
    meta.local_metadata.is_completed := 1;
}

// Action _send_to_parent_0
procedure {:inline 1} _send_to_parent_0()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := meta.local_metadata.pkt_par;
    meta.local_metadata.is_completed := 1;
}

procedure _set_egress_port.action_run.limit();
    ensures(_set_egress_port.action_run==_set_egress_port.action._starting_port_meta_0);
	modifies _set_egress_port.action_run;

// Table _set_egress_port
procedure {:inline 1} _set_egress_port.apply()
	modifies meta.local_metadata.all_ports, meta.local_metadata.out_port, meta.local_metadata.starting_port;
{
    var _starting_port_meta_0.port_state:int;
    meta.local_metadata.out_port := meta.local_metadata.out_port;

    call _set_egress_port.apply_table_entry();

    action__starting_port_meta_0:
    if(_set_egress_port.action_run == _set_egress_port.action._starting_port_meta_0){
        call _starting_port_meta_0(_starting_port_meta_0.port_state);
    }
}

// Table Entry _set_egress_port.apply_table_entry
procedure _set_egress_port.apply_table_entry();

// Table Exit _set_egress_port.apply_table_exit
procedure _set_egress_port.apply_table_exit();

// Action _set_if_status_0
procedure {:inline 1} _set_if_status_0(_value:int)
	modifies meta.local_metadata.if_out_failed;
{
    meta.local_metadata.if_out_failed := _value;
}

// Action _set_next_port_0
procedure {:inline 1} _set_next_port_0()
	modifies meta.local_metadata.out_port, meta.local_metadata.pkt_curr;
{
    meta.local_metadata.pkt_curr := add.bv8(meta.local_metadata.pkt_curr, 1);
    assume(meta.local_metadata.pkt_curr != 0);
	meta.local_metadata.out_port := meta.local_metadata.pkt_curr;
}

// Action _set_parent_0
procedure {:inline 1} _set_parent_0()
	modifies hdr.dfsTag.pkt_v1_par, meta.local_metadata.pkt_par;
{
    meta.local_metadata.pkt_par := (standard_metadata.ingress_port%power_2_8());
    hdr.dfsTag.pkt_v1_par := meta.local_metadata.pkt_par;
}

procedure _set_parent_out.action_run.limit();
    ensures(_set_parent_out.action_run==_set_parent_out.action._send_to_parent_0);
	modifies _set_parent_out.action_run;

// Table _set_parent_out
procedure {:inline 1} _set_parent_out.apply()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{

    call _set_parent_out.apply_table_entry();

    action__send_to_parent_0:
    if(_set_parent_out.action_run == _set_parent_out.action._send_to_parent_0){
        call _send_to_parent_0();
    }
}

// Table Entry _set_parent_out.apply_table_entry
procedure _set_parent_out.apply_table_entry();

// Table Exit _set_parent_out.apply_table_exit
procedure _set_parent_out.apply_table_exit();

// Action _skip_failures_0
procedure {:inline 1} _skip_failures_0(_working:int)
	modifies meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := _working;
}

// Action _skip_parent_0
procedure {:inline 1} _skip_parent_0()
	modifies meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := add.bv8(meta.local_metadata.out_port, 1);
}

// Action _start_from_one_0
procedure {:inline 1} _start_from_one_0()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{
    meta.local_metadata.out_port := 1;
    meta.local_metadata.is_completed := 0;
}

// Action _starting_port_meta_0
procedure {:inline 1} _starting_port_meta_0(port_state:int)
	modifies meta.local_metadata.all_ports, meta.local_metadata.starting_port;
{
    meta.local_metadata.starting_port := port_state;
    // read
    meta.local_metadata.all_ports := all_ports_status.read(all_ports_status, 0);
}

procedure _to_parent.action_run.limit();
    ensures(_to_parent.action_run==_to_parent.action._outport_to_parent_0);
	modifies _to_parent.action_run;

// Table _to_parent
procedure {:inline 1} _to_parent.apply()
	modifies meta.local_metadata.is_completed, meta.local_metadata.out_port;
{

    call _to_parent.apply_table_entry();

    action__outport_to_parent_0:
    if(_to_parent.action_run == _to_parent.action._outport_to_parent_0){
        call _outport_to_parent_0();
    }
}

// Table Entry _to_parent.apply_table_entry
procedure _to_parent.apply_table_entry();

// Table Exit _to_parent.apply_table_exit
procedure _to_parent.apply_table_exit();

procedure _try_next.action_run.limit();
    ensures(_try_next.action_run==_try_next.action._next_outport_0);
	modifies _try_next.action_run;

// Table _try_next
procedure {:inline 1} _try_next.apply()
	modifies meta.local_metadata.out_port;
{

    call _try_next.apply_table_entry();

    action__next_outport_0:
    if(_try_next.action_run == _try_next.action._next_outport_0){
        call _next_outport_0();
    }
}

// Table Entry _try_next.apply_table_entry
procedure _try_next.apply_table_entry();

// Table Exit _try_next.apply_table_exit
procedure _try_next.apply_table_exit();

// Action _xor_outport_0
procedure {:inline 1} _xor_outport_0(_all_ports:int)
	modifies meta.local_metadata.all_ports, meta.local_metadata.out_port_xor;
{
    // read
    meta.local_metadata.all_ports := all_ports_status.read(all_ports_status, 0);
    meta.local_metadata.out_port_xor := bxor.bv32(meta.local_metadata.all_ports, _all_ports);
}
procedure {:inline 1} accept()
{
}
function all_ports_status.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} all_ports_status.write(index:int, value:int)
	modifies all_ports_status;
{
    all_ports_status[index] := value;
}
procedure clear_drop();
    ensures drop==false;
	modifies drop;
procedure clear_forward();
    ensures forward==false;
	modifies forward;

// Control computeChecksum
procedure {:inline 1} computeChecksum()
{
}

procedure default_route_0.action_run.limit();
    ensures(default_route_0.action_run==default_route_0.action.set_default_route);
	modifies default_route_0.action_run;

// Table default_route_0
procedure {:inline 1} default_route_0.apply()
	modifies meta.local_metadata.out_port, standard_metadata.ingress_port;
{
    var set_default_route.send_to:int;
    standard_metadata.ingress_port := standard_metadata.ingress_port;

    call default_route_0.apply_table_entry();

    action_set_default_route:
    if(default_route_0.action_run == default_route_0.action.set_default_route){
        call set_default_route(set_default_route.send_to);
    }
}

// Table Entry default_route_0.apply_table_entry
procedure default_route_0.apply_table_entry();

// Table Exit default_route_0.apply_table_exit
procedure default_route_0.apply_table_exit();

// Control egress
procedure {:inline 1} egress()
{
}

// Action fwd
procedure {:inline 1} fwd(_port:int)
	modifies forward, hdr.dfsTag.pkt_v1_curr, hdr.ff_tags.path_length, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := _port;
    forward := true;
    hdr.dfsTag.pkt_v1_curr := (_port%power_2_8());
    hdr.ff_tags.path_length := add.bv8(hdr.ff_tags.path_length, 1);
}

procedure fwd_parent_0.action_run.limit();
    ensures(fwd_parent_0.action_run==fwd_parent_0.action.towards_parent);
	modifies fwd_parent_0.action_run;

// Table fwd_parent_0
procedure {:inline 1} fwd_parent_0.apply()
	modifies forward, hdr.ff_tags.path_length, standard_metadata.egress_spec;
{

    call fwd_parent_0.apply_table_entry();

    action_towards_parent:
    if(fwd_parent_0.action_run == fwd_parent_0.action.towards_parent){
        call towards_parent();
    }
}

// Table Entry fwd_parent_0.apply_table_entry
procedure fwd_parent_0.apply_table_entry();

// Table Exit fwd_parent_0.apply_table_exit
procedure fwd_parent_0.apply_table_exit();

procedure fwd_pkt_0.action_run.limit();
    ensures(fwd_pkt_0.action_run==fwd_pkt_0.action.fwd);
	modifies fwd_pkt_0.action_run;

// Table fwd_pkt_0
procedure {:inline 1} fwd_pkt_0.apply()
	modifies forward, hdr.dfsTag.pkt_v1_curr, hdr.ff_tags.path_length, meta.local_metadata.all_ports, meta.local_metadata.starting_port, standard_metadata.egress_spec;
{
    var fwd._port:int;
    meta.local_metadata.starting_port := meta.local_metadata.starting_port;
    meta.local_metadata.all_ports := meta.local_metadata.all_ports;

    call fwd_pkt_0.apply_table_entry();

    action_fwd:
    if(fwd_pkt_0.action_run == fwd_pkt_0.action.fwd){
        call fwd(fwd._port);
    }
}

// Table Entry fwd_pkt_0.apply_table_entry
procedure fwd_pkt_0.apply_table_entry();

// Table Exit fwd_pkt_0.apply_table_exit
procedure fwd_pkt_0.apply_table_exit();
procedure {:inline 1} havocProcedure()
	modifies _old_hdr.dfsTag.pkt_v1_curr, _old_hdr.dfsTag.pkt_v1_par, _old_hdr.dfsTag.pkt_v2_curr, _old_hdr.dfsTag.pkt_v2_par, _old_hdr.dfsTag.pkt_v3_curr, _old_hdr.dfsTag.pkt_v3_par, _old_hdr.dfsTag.pkt_v4_curr, _old_hdr.dfsTag.pkt_v4_par, _old_hdr.ff_tags.dfs_start, _old_hdr.ff_tags.is_edge, _old_hdr.ff_tags.path_length, _old_hdr.ff_tags.preamble, _old_hdr.ff_tags.shortest_path, emit, hdr.dfsTag.pkt_v1_curr, hdr.dfsTag.pkt_v1_par, hdr.dfsTag.pkt_v2_curr, hdr.dfsTag.pkt_v2_par, hdr.dfsTag.pkt_v3_curr, hdr.dfsTag.pkt_v3_par, hdr.dfsTag.pkt_v4_curr, hdr.dfsTag.pkt_v4_par, hdr.dfsTag.valid, hdr.ff_tags.dfs_start, hdr.ff_tags.is_edge, hdr.ff_tags.path_length, hdr.ff_tags.preamble, hdr.ff_tags.shortest_path, hdr.ff_tags.valid;
{
    hdr.dfsTag.valid := false;
    emit[hdr.dfsTag] := false;
    havoc hdr.dfsTag.pkt_v1_curr;
    assume(0 <= hdr.dfsTag.pkt_v1_curr && hdr.dfsTag.pkt_v1_curr <= power_2_8() );
    _old_hdr.dfsTag.pkt_v1_curr := hdr.dfsTag.pkt_v1_curr;
    havoc hdr.dfsTag.pkt_v1_par;
    assume(0 <= hdr.dfsTag.pkt_v1_par && hdr.dfsTag.pkt_v1_par <= power_2_8() );
    _old_hdr.dfsTag.pkt_v1_par := hdr.dfsTag.pkt_v1_par;
    havoc hdr.dfsTag.pkt_v2_curr;
    assume(0 <= hdr.dfsTag.pkt_v2_curr && hdr.dfsTag.pkt_v2_curr <= power_2_8() );
    _old_hdr.dfsTag.pkt_v2_curr := hdr.dfsTag.pkt_v2_curr;
    havoc hdr.dfsTag.pkt_v2_par;
    assume(0 <= hdr.dfsTag.pkt_v2_par && hdr.dfsTag.pkt_v2_par <= power_2_8() );
    _old_hdr.dfsTag.pkt_v2_par := hdr.dfsTag.pkt_v2_par;
    havoc hdr.dfsTag.pkt_v3_curr;
    assume(0 <= hdr.dfsTag.pkt_v3_curr && hdr.dfsTag.pkt_v3_curr <= power_2_8() );
    _old_hdr.dfsTag.pkt_v3_curr := hdr.dfsTag.pkt_v3_curr;
    havoc hdr.dfsTag.pkt_v3_par;
    assume(0 <= hdr.dfsTag.pkt_v3_par && hdr.dfsTag.pkt_v3_par <= power_2_8() );
    _old_hdr.dfsTag.pkt_v3_par := hdr.dfsTag.pkt_v3_par;
    havoc hdr.dfsTag.pkt_v4_curr;
    assume(0 <= hdr.dfsTag.pkt_v4_curr && hdr.dfsTag.pkt_v4_curr <= power_2_8() );
    _old_hdr.dfsTag.pkt_v4_curr := hdr.dfsTag.pkt_v4_curr;
    havoc hdr.dfsTag.pkt_v4_par;
    assume(0 <= hdr.dfsTag.pkt_v4_par && hdr.dfsTag.pkt_v4_par <= power_2_8() );
    _old_hdr.dfsTag.pkt_v4_par := hdr.dfsTag.pkt_v4_par;
    hdr.ff_tags.valid := false;
    emit[hdr.ff_tags] := false;
    havoc hdr.ff_tags.preamble;
    assume(0 <= hdr.ff_tags.preamble && hdr.ff_tags.preamble <= power_2_64() );
    _old_hdr.ff_tags.preamble := hdr.ff_tags.preamble;
    havoc hdr.ff_tags.shortest_path;
    assume(0 <= hdr.ff_tags.shortest_path && hdr.ff_tags.shortest_path <= power_2_8() );
    _old_hdr.ff_tags.shortest_path := hdr.ff_tags.shortest_path;
    havoc hdr.ff_tags.path_length;
    assume(0 <= hdr.ff_tags.path_length && hdr.ff_tags.path_length <= power_2_8() );
    _old_hdr.ff_tags.path_length := hdr.ff_tags.path_length;
    havoc hdr.ff_tags.is_edge;
    assume(0 <= hdr.ff_tags.is_edge && hdr.ff_tags.is_edge <= power_2_1() );
    _old_hdr.ff_tags.is_edge := hdr.ff_tags.is_edge;
    havoc hdr.ff_tags.dfs_start;
    assume(0 <= hdr.ff_tags.dfs_start && hdr.ff_tags.dfs_start <= power_2_1() );
    _old_hdr.ff_tags.dfs_start := hdr.ff_tags.dfs_start;
}

// Control ingress
procedure {:inline 1} ingress()
	modifies forward, hdr.dfsTag.pkt_v1_curr, hdr.dfsTag.pkt_v1_par, hdr.ff_tags.dfs_start, hdr.ff_tags.path_length, meta.local_metadata.all_ports, meta.local_metadata.if_out_failed, meta.local_metadata.is_completed, meta.local_metadata.out_port, meta.local_metadata.out_port_xor, meta.local_metadata.pkt_curr, meta.local_metadata.pkt_par, meta.local_metadata.pkt_start, meta.local_metadata.starting_port, standard_metadata.egress_spec, standard_metadata.ingress_port;
{
    if(hdr.dfsTag.valid){
        if((meta.local_metadata.pkt_start == 0)){
            call default_route_0.apply();
            if((meta.local_metadata.out_port == 0)){
                call start_dfs_0.apply();
            }
        }
        else{
            if((meta.local_metadata.pkt_curr == 0)){
                call _curr_eq_zero.apply();
            }
            call _curr_eq_ingress.apply();
            if((meta.local_metadata.out_port == 5)){
                call _hit_depth.apply();
            }
            if((meta.local_metadata.is_completed == 0)){
                call _set_egress_port.apply();
                if((meta.local_metadata.out_port != 4)){
                    call _check_out_failed.apply();
                }
                else{
                    call _check_outport_status.apply();
                    call _if_status.apply();
                    if((meta.local_metadata.if_out_failed == meta.local_metadata.out_port)){
                        call _try_next.apply();
                        if((meta.local_metadata.out_port == 5)){
                            call _to_parent.apply();
                        }
                    }
                }
                if(((meta.local_metadata.is_completed == 0)) && ((meta.local_metadata.out_port == meta.local_metadata.pkt_par))){
                    call _jump_to_next.apply();
                    if((meta.local_metadata.out_port == 5)){
                        call _set_parent_out.apply();
                    }
                }
            }
            if((meta.local_metadata.is_completed == 1)){
                if((meta.local_metadata.out_port == 0)){
                    call _out_eq_zero.apply();
                }
            }
        }
        if((meta.local_metadata.is_completed == 1)){
            call fwd_parent_0.apply();
        }
        else{
            call set_out_port_0.apply();
            call fwd_pkt_0.apply();
        }
    }
}
procedure {:inline 1} main()
	modifies _old_hdr.dfsTag.pkt_v1_curr, _old_hdr.dfsTag.pkt_v1_par, _old_hdr.dfsTag.pkt_v2_curr, _old_hdr.dfsTag.pkt_v2_par, _old_hdr.dfsTag.pkt_v3_curr, _old_hdr.dfsTag.pkt_v3_par, _old_hdr.dfsTag.pkt_v4_curr, _old_hdr.dfsTag.pkt_v4_par, _old_hdr.ff_tags.dfs_start, _old_hdr.ff_tags.is_edge, _old_hdr.ff_tags.path_length, _old_hdr.ff_tags.preamble, _old_hdr.ff_tags.shortest_path, drop, emit, forward, hdr.dfsTag.pkt_v1_curr, hdr.dfsTag.pkt_v1_par, hdr.dfsTag.pkt_v2_curr, hdr.dfsTag.pkt_v2_par, hdr.dfsTag.pkt_v3_curr, hdr.dfsTag.pkt_v3_par, hdr.dfsTag.pkt_v4_curr, hdr.dfsTag.pkt_v4_par, hdr.dfsTag.valid, hdr.ff_tags.dfs_start, hdr.ff_tags.is_edge, hdr.ff_tags.path_length, hdr.ff_tags.preamble, hdr.ff_tags.shortest_path, hdr.ff_tags.valid, meta.local_metadata.all_ports, meta.local_metadata.if_out_failed, meta.local_metadata.is_completed, meta.local_metadata.out_port, meta.local_metadata.out_port_xor, meta.local_metadata.pkt_curr, meta.local_metadata.pkt_par, meta.local_metadata.pkt_start, meta.local_metadata.starting_port, standard_metadata.egress_spec, standard_metadata.ingress_port;
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
	modifies _check_out_failed.action_run, _check_outport_status.action_run, _curr_eq_ingress.action_run, _curr_eq_zero.action_run, _hit_depth.action_run, _if_status.action_run, _jump_to_next.action_run, _old_hdr.dfsTag.pkt_v1_curr, _old_hdr.dfsTag.pkt_v1_par, _old_hdr.dfsTag.pkt_v2_curr, _old_hdr.dfsTag.pkt_v2_par, _old_hdr.dfsTag.pkt_v3_curr, _old_hdr.dfsTag.pkt_v3_par, _old_hdr.dfsTag.pkt_v4_curr, _old_hdr.dfsTag.pkt_v4_par, _old_hdr.ff_tags.dfs_start, _old_hdr.ff_tags.is_edge, _old_hdr.ff_tags.path_length, _old_hdr.ff_tags.preamble, _old_hdr.ff_tags.shortest_path, _out_eq_zero.action_run, _set_egress_port.action_run, _set_parent_out.action_run, _to_parent.action_run, _try_next.action_run, default_route_0.action_run, drop, emit, forward, fwd_parent_0.action_run, fwd_pkt_0.action_run, hdr.dfsTag.pkt_v1_curr, hdr.dfsTag.pkt_v1_par, hdr.dfsTag.pkt_v2_curr, hdr.dfsTag.pkt_v2_par, hdr.dfsTag.pkt_v3_curr, hdr.dfsTag.pkt_v3_par, hdr.dfsTag.pkt_v4_curr, hdr.dfsTag.pkt_v4_par, hdr.dfsTag.valid, hdr.ff_tags.dfs_start, hdr.ff_tags.is_edge, hdr.ff_tags.path_length, hdr.ff_tags.preamble, hdr.ff_tags.shortest_path, hdr.ff_tags.valid, meta.local_metadata.all_ports, meta.local_metadata.if_out_failed, meta.local_metadata.is_completed, meta.local_metadata.out_port, meta.local_metadata.out_port_xor, meta.local_metadata.pkt_curr, meta.local_metadata.pkt_par, meta.local_metadata.pkt_start, meta.local_metadata.starting_port, set_out_port_0.action_run, standard_metadata.egress_spec, standard_metadata.ingress_port, start_dfs_0.action_run;
{
    call _try_next.action_run.limit();
    call _to_parent.action_run.limit();
    call _set_parent_out.action_run.limit();
    call _set_egress_port.action_run.limit();
    call _out_eq_zero.action_run.limit();
    call _jump_to_next.action_run.limit();
    call _if_status.action_run.limit();
    call _hit_depth.action_run.limit();
    call _curr_eq_zero.action_run.limit();
    call _curr_eq_ingress.action_run.limit();
    call _check_outport_status.action_run.limit();
    call _check_out_failed.action_run.limit();
    call start_dfs_0.action_run.limit();
    call set_out_port_0.action_run.limit();
    call fwd_pkt_0.action_run.limit();
    call fwd_parent_0.action_run.limit();
    call default_route_0.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;
procedure reject();
    ensures drop==true;
	modifies drop;
procedure {:inline 1} setInvalid(header:Ref);
    ensures (isValid[header] == false);
	modifies isValid;
procedure {:inline 1} setValid(header:Ref);

// Action set_default_route
procedure {:inline 1} set_default_route(send_to:int)
	modifies meta.local_metadata.out_port;
{
	assume(send_to != meta.local_metadata.pkt_par);
    meta.local_metadata.out_port := send_to;
}

// Action set_dfs_tags
procedure {:inline 1} set_dfs_tags()
	modifies hdr.ff_tags.dfs_start, meta.local_metadata.out_port, meta.local_metadata.pkt_start;
{
    meta.local_metadata.pkt_start := 1;
    hdr.ff_tags.dfs_start := meta.local_metadata.pkt_start;
	assume(1 != meta.local_metadata.pkt_par);
    meta.local_metadata.out_port := 1;
}

// Action set_out_meta
procedure {:inline 1} set_out_meta(meta_state:int)
	modifies meta.local_metadata.all_ports, meta.local_metadata.starting_port;
{
    meta.local_metadata.starting_port := meta_state;
    // read
    meta.local_metadata.all_ports := all_ports_status.read(all_ports_status, 0);
}

procedure set_out_port_0.action_run.limit();
    ensures(set_out_port_0.action_run==set_out_port_0.action.set_out_meta);
	modifies set_out_port_0.action_run;

// Table set_out_port_0
procedure {:inline 1} set_out_port_0.apply()
	modifies meta.local_metadata.all_ports, meta.local_metadata.out_port, meta.local_metadata.starting_port;
{
    var set_out_meta.meta_state:int;
    meta.local_metadata.out_port := meta.local_metadata.out_port;

    call set_out_port_0.apply_table_entry();

    action_set_out_meta:
    if(set_out_port_0.action_run == set_out_port_0.action.set_out_meta){
        call set_out_meta(set_out_meta.meta_state);
    }
}

// Table Entry set_out_port_0.apply_table_entry
procedure set_out_port_0.apply_table_entry();

// Table Exit set_out_port_0.apply_table_exit
procedure set_out_port_0.apply_table_exit();

//Parser State start
procedure {:inline 1} start()
	modifies hdr.dfsTag.valid, hdr.ff_tags.valid, meta.local_metadata.pkt_curr, meta.local_metadata.pkt_par, meta.local_metadata.pkt_start;
{
    hdr.ff_tags.valid := true;
    hdr.dfsTag.valid := true;
    meta.local_metadata.pkt_curr := hdr.dfsTag.pkt_v1_curr;
    meta.local_metadata.pkt_par := hdr.dfsTag.pkt_v1_par;
    meta.local_metadata.pkt_start := hdr.ff_tags.dfs_start;
    call accept();
}

procedure start_dfs_0.action_run.limit();
    ensures(start_dfs_0.action_run==start_dfs_0.action.set_dfs_tags);
	modifies start_dfs_0.action_run;

// Table start_dfs_0
procedure {:inline 1} start_dfs_0.apply()
	modifies hdr.ff_tags.dfs_start, meta.local_metadata.out_port, meta.local_metadata.pkt_start;
{

    call start_dfs_0.apply_table_entry();

    action_set_dfs_tags:
    if(start_dfs_0.action_run == start_dfs_0.action.set_dfs_tags){
        call set_dfs_tags();
    }
}

// Table Entry start_dfs_0.apply_table_entry
procedure start_dfs_0.apply_table_entry();

// Table Exit start_dfs_0.apply_table_exit
procedure start_dfs_0.apply_table_exit();

// Action towards_parent
procedure {:inline 1} towards_parent()
	modifies forward, hdr.ff_tags.path_length, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := meta.local_metadata.out_port;
    forward := true;
    hdr.ff_tags.path_length := add.bv8(hdr.ff_tags.path_length, 1);
}

// Control verifyChecksum
procedure {:inline 1} verifyChecksum()
{
}
