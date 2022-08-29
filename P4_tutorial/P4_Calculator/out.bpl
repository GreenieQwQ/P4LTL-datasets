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

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.dstAddr:int;
var _old_header_hdr.ethernet.dstAddr:int;
var hdr.ethernet.srcAddr:int;
var _old_header_hdr.ethernet.srcAddr:int;
var hdr.ethernet.etherType:int;
var _old_header_hdr.ethernet.etherType:int;

// Header p4calc_t
var hdr.p4calc:Ref;
var hdr.p4calc.p:int;
var _old_header_hdr.p4calc.p:int;
var hdr.p4calc.four:int;
var _old_header_hdr.p4calc.four:int;
var hdr.p4calc.ver:int;
var _old_header_hdr.p4calc.ver:int;
var hdr.p4calc.op:int;
var _old_header_hdr.p4calc.op:int;
var hdr.p4calc.operand_a:int;
var _old_header_hdr.p4calc.operand_a:int;
var hdr.p4calc.operand_b:int;
var _old_header_hdr.p4calc.operand_b:int;
var hdr.p4calc.res:int;
var _old_header_hdr.p4calc.res:int;

// Struct metadata
var tmp:int;

// Header p4calc_t
var tmp_0:Ref;
var tmp_0.p:int;
var _old_header_tmp_0.p:int;
var tmp_0.four:int;
var _old_header_tmp_0.four:int;
var tmp_0.ver:int;
var _old_header_tmp_0.ver:int;
var tmp_0.op:int;
var _old_header_tmp_0.op:int;
var tmp_0.operand_a:int;
var _old_header_tmp_0.operand_a:int;
var tmp_0.operand_b:int;
var _old_header_tmp_0.operand_b:int;
var tmp_0.res:int;
var _old_header_tmp_0.res:int;
var tmp_1:int;

// Header p4calc_t
var tmp_2:Ref;
var tmp_2.p:int;
var _old_header_tmp_2.p:int;
var tmp_2.four:int;
var _old_header_tmp_2.four:int;
var tmp_2.ver:int;
var _old_header_tmp_2.ver:int;
var tmp_2.op:int;
var _old_header_tmp_2.op:int;
var tmp_2.operand_a:int;
var _old_header_tmp_2.operand_a:int;
var tmp_2.operand_b:int;
var _old_header_tmp_2.operand_b:int;
var tmp_2.res:int;
var _old_header_tmp_2.res:int;
var tmp_3:int;

// Header p4calc_t
var tmp_4:Ref;
var tmp_4.p:int;
var _old_header_tmp_4.p:int;
var tmp_4.four:int;
var _old_header_tmp_4.four:int;
var tmp_4.ver:int;
var _old_header_tmp_4.ver:int;
var tmp_4.op:int;
var _old_header_tmp_4.op:int;
var tmp_4.operand_a:int;
var _old_header_tmp_4.operand_a:int;
var tmp_4.operand_b:int;
var _old_header_tmp_4.operand_b:int;
var tmp_4.res:int;
var _old_header_tmp_4.res:int;
var tmp_5:int;
function {:inline true} add.bv32(left:int, right:int) : int{((left%power_2_32())+(right%power_2_32()))%power_2_32()}
function {:inline true} sub.bv32(left:int, right:int) : int{(power_2_32() + (left%power_2_32()) - (right%power_2_32()))%power_2_32()}
function {:inline true} band.bv32(left:int, right:int) : int{
    band( ((left-left%power_2_0())/power_2_0())%2, ((right-right%power_2_0())/power_2_0())%2 ) * power_2_0() +
    band( ((left-left%power_2_1())/power_2_1())%2, ((right-right%power_2_1())/power_2_1())%2 ) * power_2_1() +
    band( ((left-left%power_2_2())/power_2_2())%2, ((right-right%power_2_2())/power_2_2())%2 ) * power_2_2() +
    band( ((left-left%power_2_3())/power_2_3())%2, ((right-right%power_2_3())/power_2_3())%2 ) * power_2_3() +
    band( ((left-left%power_2_4())/power_2_4())%2, ((right-right%power_2_4())/power_2_4())%2 ) * power_2_4() +
    band( ((left-left%power_2_5())/power_2_5())%2, ((right-right%power_2_5())/power_2_5())%2 ) * power_2_5() +
    band( ((left-left%power_2_6())/power_2_6())%2, ((right-right%power_2_6())/power_2_6())%2 ) * power_2_6() +
    band( ((left-left%power_2_7())/power_2_7())%2, ((right-right%power_2_7())/power_2_7())%2 ) * power_2_7() +
    band( ((left-left%power_2_8())/power_2_8())%2, ((right-right%power_2_8())/power_2_8())%2 ) * power_2_8() +
    band( ((left-left%power_2_9())/power_2_9())%2, ((right-right%power_2_9())/power_2_9())%2 ) * power_2_9() +
    band( ((left-left%power_2_10())/power_2_10())%2, ((right-right%power_2_10())/power_2_10())%2 ) * power_2_10() +
    band( ((left-left%power_2_11())/power_2_11())%2, ((right-right%power_2_11())/power_2_11())%2 ) * power_2_11() +
    band( ((left-left%power_2_12())/power_2_12())%2, ((right-right%power_2_12())/power_2_12())%2 ) * power_2_12() +
    band( ((left-left%power_2_13())/power_2_13())%2, ((right-right%power_2_13())/power_2_13())%2 ) * power_2_13() +
    band( ((left-left%power_2_14())/power_2_14())%2, ((right-right%power_2_14())/power_2_14())%2 ) * power_2_14() +
    band( ((left-left%power_2_15())/power_2_15())%2, ((right-right%power_2_15())/power_2_15())%2 ) * power_2_15() +
    band( ((left-left%power_2_16())/power_2_16())%2, ((right-right%power_2_16())/power_2_16())%2 ) * power_2_16() +
    band( ((left-left%power_2_17())/power_2_17())%2, ((right-right%power_2_17())/power_2_17())%2 ) * power_2_17() +
    band( ((left-left%power_2_18())/power_2_18())%2, ((right-right%power_2_18())/power_2_18())%2 ) * power_2_18() +
    band( ((left-left%power_2_19())/power_2_19())%2, ((right-right%power_2_19())/power_2_19())%2 ) * power_2_19() +
    band( ((left-left%power_2_20())/power_2_20())%2, ((right-right%power_2_20())/power_2_20())%2 ) * power_2_20() +
    band( ((left-left%power_2_21())/power_2_21())%2, ((right-right%power_2_21())/power_2_21())%2 ) * power_2_21() +
    band( ((left-left%power_2_22())/power_2_22())%2, ((right-right%power_2_22())/power_2_22())%2 ) * power_2_22() +
    band( ((left-left%power_2_23())/power_2_23())%2, ((right-right%power_2_23())/power_2_23())%2 ) * power_2_23() +
    band( ((left-left%power_2_24())/power_2_24())%2, ((right-right%power_2_24())/power_2_24())%2 ) * power_2_24() +
    band( ((left-left%power_2_25())/power_2_25())%2, ((right-right%power_2_25())/power_2_25())%2 ) * power_2_25() +
    band( ((left-left%power_2_26())/power_2_26())%2, ((right-right%power_2_26())/power_2_26())%2 ) * power_2_26() +
    band( ((left-left%power_2_27())/power_2_27())%2, ((right-right%power_2_27())/power_2_27())%2 ) * power_2_27() +
    band( ((left-left%power_2_28())/power_2_28())%2, ((right-right%power_2_28())/power_2_28())%2 ) * power_2_28() +
    band( ((left-left%power_2_29())/power_2_29())%2, ((right-right%power_2_29())/power_2_29())%2 ) * power_2_29() +
    band( ((left-left%power_2_30())/power_2_30())%2, ((right-right%power_2_30())/power_2_30())%2 ) * power_2_30() +
    band( ((left-left%power_2_31())/power_2_31())%2, ((right-right%power_2_31())/power_2_31())%2 ) * power_2_31()
}
function {:inline true} bor.bv32(left:int, right:int) : int{
    bor( ((left-left%power_2_0())/power_2_0())%2, ((right-right%power_2_0())/power_2_0())%2 ) * power_2_0() +
    bor( ((left-left%power_2_1())/power_2_1())%2, ((right-right%power_2_1())/power_2_1())%2 ) * power_2_1() +
    bor( ((left-left%power_2_2())/power_2_2())%2, ((right-right%power_2_2())/power_2_2())%2 ) * power_2_2() +
    bor( ((left-left%power_2_3())/power_2_3())%2, ((right-right%power_2_3())/power_2_3())%2 ) * power_2_3() +
    bor( ((left-left%power_2_4())/power_2_4())%2, ((right-right%power_2_4())/power_2_4())%2 ) * power_2_4() +
    bor( ((left-left%power_2_5())/power_2_5())%2, ((right-right%power_2_5())/power_2_5())%2 ) * power_2_5() +
    bor( ((left-left%power_2_6())/power_2_6())%2, ((right-right%power_2_6())/power_2_6())%2 ) * power_2_6() +
    bor( ((left-left%power_2_7())/power_2_7())%2, ((right-right%power_2_7())/power_2_7())%2 ) * power_2_7() +
    bor( ((left-left%power_2_8())/power_2_8())%2, ((right-right%power_2_8())/power_2_8())%2 ) * power_2_8() +
    bor( ((left-left%power_2_9())/power_2_9())%2, ((right-right%power_2_9())/power_2_9())%2 ) * power_2_9() +
    bor( ((left-left%power_2_10())/power_2_10())%2, ((right-right%power_2_10())/power_2_10())%2 ) * power_2_10() +
    bor( ((left-left%power_2_11())/power_2_11())%2, ((right-right%power_2_11())/power_2_11())%2 ) * power_2_11() +
    bor( ((left-left%power_2_12())/power_2_12())%2, ((right-right%power_2_12())/power_2_12())%2 ) * power_2_12() +
    bor( ((left-left%power_2_13())/power_2_13())%2, ((right-right%power_2_13())/power_2_13())%2 ) * power_2_13() +
    bor( ((left-left%power_2_14())/power_2_14())%2, ((right-right%power_2_14())/power_2_14())%2 ) * power_2_14() +
    bor( ((left-left%power_2_15())/power_2_15())%2, ((right-right%power_2_15())/power_2_15())%2 ) * power_2_15() +
    bor( ((left-left%power_2_16())/power_2_16())%2, ((right-right%power_2_16())/power_2_16())%2 ) * power_2_16() +
    bor( ((left-left%power_2_17())/power_2_17())%2, ((right-right%power_2_17())/power_2_17())%2 ) * power_2_17() +
    bor( ((left-left%power_2_18())/power_2_18())%2, ((right-right%power_2_18())/power_2_18())%2 ) * power_2_18() +
    bor( ((left-left%power_2_19())/power_2_19())%2, ((right-right%power_2_19())/power_2_19())%2 ) * power_2_19() +
    bor( ((left-left%power_2_20())/power_2_20())%2, ((right-right%power_2_20())/power_2_20())%2 ) * power_2_20() +
    bor( ((left-left%power_2_21())/power_2_21())%2, ((right-right%power_2_21())/power_2_21())%2 ) * power_2_21() +
    bor( ((left-left%power_2_22())/power_2_22())%2, ((right-right%power_2_22())/power_2_22())%2 ) * power_2_22() +
    bor( ((left-left%power_2_23())/power_2_23())%2, ((right-right%power_2_23())/power_2_23())%2 ) * power_2_23() +
    bor( ((left-left%power_2_24())/power_2_24())%2, ((right-right%power_2_24())/power_2_24())%2 ) * power_2_24() +
    bor( ((left-left%power_2_25())/power_2_25())%2, ((right-right%power_2_25())/power_2_25())%2 ) * power_2_25() +
    bor( ((left-left%power_2_26())/power_2_26())%2, ((right-right%power_2_26())/power_2_26())%2 ) * power_2_26() +
    bor( ((left-left%power_2_27())/power_2_27())%2, ((right-right%power_2_27())/power_2_27())%2 ) * power_2_27() +
    bor( ((left-left%power_2_28())/power_2_28())%2, ((right-right%power_2_28())/power_2_28())%2 ) * power_2_28() +
    bor( ((left-left%power_2_29())/power_2_29())%2, ((right-right%power_2_29())/power_2_29())%2 ) * power_2_29() +
    bor( ((left-left%power_2_30())/power_2_30())%2, ((right-right%power_2_30())/power_2_30())%2 ) * power_2_30() +
    bor( ((left-left%power_2_31())/power_2_31())%2, ((right-right%power_2_31())/power_2_31())%2 ) * power_2_31()
}
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

// Table calculate_0 Actionlist Declaration
type calculate_0.action;
const unique calculate_0.action.operation_add : calculate_0.action;
const unique calculate_0.action.operation_sub : calculate_0.action;
const unique calculate_0.action.operation_and : calculate_0.action;
const unique calculate_0.action.operation_or : calculate_0.action;
const unique calculate_0.action.operation_xor : calculate_0.action;
var calculate_0.action_run : calculate_0.action;
var calculate_0.hit : bool;
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
	modifies drop, forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.op, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    if(isValid[hdr.p4calc]){
        call calculate_0.apply();
    }
    else{
        call operation_drop_2();
    }
}

// Control MyVerifyChecksum
procedure {:inline 1} MyVerifyChecksum()
{
}
procedure ULTIMATE.start()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.p4calc.four, _old_header_hdr.p4calc.op, _old_header_hdr.p4calc.operand_a, _old_header_hdr.p4calc.operand_b, _old_header_hdr.p4calc.p, _old_header_hdr.p4calc.res, _old_header_hdr.p4calc.ver, _old_header_tmp_0.four, _old_header_tmp_0.op, _old_header_tmp_0.operand_a, _old_header_tmp_0.operand_b, _old_header_tmp_0.p, _old_header_tmp_0.res, _old_header_tmp_0.ver, _old_header_tmp_2.four, _old_header_tmp_2.op, _old_header_tmp_2.operand_a, _old_header_tmp_2.operand_b, _old_header_tmp_2.p, _old_header_tmp_2.res, _old_header_tmp_2.ver, _old_header_tmp_4.four, _old_header_tmp_4.op, _old_header_tmp_4.operand_a, _old_header_tmp_4.operand_b, _old_header_tmp_4.p, _old_header_tmp_4.res, _old_header_tmp_4.ver, calculate_0.action_run, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.p4calc.four, hdr.p4calc.op, hdr.p4calc.operand_a, hdr.p4calc.operand_b, hdr.p4calc.p, hdr.p4calc.res, hdr.p4calc.ver, isValid, standard_metadata.egress_spec, tmp, tmp_0, tmp_0.four, tmp_0.op, tmp_0.operand_a, tmp_0.operand_b, tmp_0.p, tmp_0.res, tmp_0.ver, tmp_1, tmp_2, tmp_2.four, tmp_2.op, tmp_2.operand_a, tmp_2.operand_b, tmp_2.p, tmp_2.res, tmp_2.ver, tmp_3, tmp_4, tmp_4.four, tmp_4.op, tmp_4.operand_a, tmp_4.operand_b, tmp_4.p, tmp_4.res, tmp_4.ver, tmp_5;
{
    call mainProcedure();
}

// Parser _parser_MyParser
procedure {:inline 1} _parser_MyParser()
	modifies drop, isValid, tmp, tmp_0, tmp_1, tmp_2, tmp_3, tmp_4;
{
    call start();
}
procedure {:inline 1} accept()
{
}

procedure calculate_0.action_run.limit();
    ensures(calculate_0.action_run==calculate_0.action.operation_add || calculate_0.action_run==calculate_0.action.operation_sub || calculate_0.action_run==calculate_0.action.operation_and || calculate_0.action_run==calculate_0.action.operation_or || calculate_0.action_run==calculate_0.action.operation_xor);
	modifies calculate_0.action_run;

// Table calculate_0
procedure {:inline 1} calculate_0.apply()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.op, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    hdr.p4calc.op := hdr.p4calc.op;

    call calculate_0.apply_table_entry();

    action_operation_add:
    if(calculate_0.action_run == calculate_0.action.operation_add){
        call operation_add();
    }

    action_operation_sub:
    if(calculate_0.action_run == calculate_0.action.operation_sub){
        call operation_sub();
    }

    action_operation_and:
    if(calculate_0.action_run == calculate_0.action.operation_and){
        call operation_and();
    }

    action_operation_or:
    if(calculate_0.action_run == calculate_0.action.operation_or){
        call operation_or();
    }

    action_operation_xor:
    if(calculate_0.action_run == calculate_0.action.operation_xor){
        call operation_xor();
    }
}

// Table Entry calculate_0.apply_table_entry
procedure calculate_0.apply_table_entry();

// Table Exit calculate_0.apply_table_exit
procedure calculate_0.apply_table_exit();

//Parser State check_p4calc
procedure {:inline 1} check_p4calc()
	modifies isValid, tmp, tmp_0, tmp_1, tmp_2, tmp_3, tmp_4;
{
    havoc tmp_0;
    tmp := tmp_0.p;
    havoc tmp_2;
    tmp_1 := tmp_2.four;
    havoc tmp_4;
    tmp_3 := tmp_4.ver;
    if(tmp == 80 && tmp_1 == 52 && tmp_3 == 1){
        call parse_p4calc();
    }
}
procedure clear_drop();
    ensures drop==false;
	modifies drop;
procedure clear_forward();
    ensures forward==false;
	modifies forward;
procedure {:inline 1} havocProcedure()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.p4calc.four, _old_header_hdr.p4calc.op, _old_header_hdr.p4calc.operand_a, _old_header_hdr.p4calc.operand_b, _old_header_hdr.p4calc.p, _old_header_hdr.p4calc.res, _old_header_hdr.p4calc.ver, _old_header_tmp_0.four, _old_header_tmp_0.op, _old_header_tmp_0.operand_a, _old_header_tmp_0.operand_b, _old_header_tmp_0.p, _old_header_tmp_0.res, _old_header_tmp_0.ver, _old_header_tmp_2.four, _old_header_tmp_2.op, _old_header_tmp_2.operand_a, _old_header_tmp_2.operand_b, _old_header_tmp_2.p, _old_header_tmp_2.res, _old_header_tmp_2.ver, _old_header_tmp_4.four, _old_header_tmp_4.op, _old_header_tmp_4.operand_a, _old_header_tmp_4.operand_b, _old_header_tmp_4.p, _old_header_tmp_4.res, _old_header_tmp_4.ver, emit, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.p4calc.four, hdr.p4calc.op, hdr.p4calc.operand_a, hdr.p4calc.operand_b, hdr.p4calc.p, hdr.p4calc.res, hdr.p4calc.ver, isValid, tmp_0.four, tmp_0.op, tmp_0.operand_a, tmp_0.operand_b, tmp_0.p, tmp_0.res, tmp_0.ver, tmp_2.four, tmp_2.op, tmp_2.operand_a, tmp_2.operand_b, tmp_2.p, tmp_2.res, tmp_2.ver, tmp_4.four, tmp_4.op, tmp_4.operand_a, tmp_4.operand_b, tmp_4.p, tmp_4.res, tmp_4.ver;
{
    isValid[hdr.ethernet] := false;
    emit[hdr.ethernet] := false;
    havoc hdr.ethernet.dstAddr;
    assume(0 <= hdr.ethernet.dstAddr && hdr.ethernet.dstAddr <= power_2_48() );
    _old_header_hdr.ethernet.dstAddr := hdr.ethernet.dstAddr;
    havoc hdr.ethernet.srcAddr;
    assume(0 <= hdr.ethernet.srcAddr && hdr.ethernet.srcAddr <= power_2_48() );
    _old_header_hdr.ethernet.srcAddr := hdr.ethernet.srcAddr;
    havoc hdr.ethernet.etherType;
    assume(0 <= hdr.ethernet.etherType && hdr.ethernet.etherType <= power_2_16() );
    _old_header_hdr.ethernet.etherType := hdr.ethernet.etherType;
    isValid[hdr.p4calc] := false;
    emit[hdr.p4calc] := false;
    havoc hdr.p4calc.p;
    assume(0 <= hdr.p4calc.p && hdr.p4calc.p <= power_2_8() );
    _old_header_hdr.p4calc.p := hdr.p4calc.p;
    havoc hdr.p4calc.four;
    assume(0 <= hdr.p4calc.four && hdr.p4calc.four <= power_2_8() );
    _old_header_hdr.p4calc.four := hdr.p4calc.four;
    havoc hdr.p4calc.ver;
    assume(0 <= hdr.p4calc.ver && hdr.p4calc.ver <= power_2_8() );
    _old_header_hdr.p4calc.ver := hdr.p4calc.ver;
    havoc hdr.p4calc.op;
    assume(0 <= hdr.p4calc.op && hdr.p4calc.op <= power_2_8() );
    _old_header_hdr.p4calc.op := hdr.p4calc.op;
    havoc hdr.p4calc.operand_a;
    assume(0 <= hdr.p4calc.operand_a && hdr.p4calc.operand_a <= power_2_32() );
    _old_header_hdr.p4calc.operand_a := hdr.p4calc.operand_a;
    havoc hdr.p4calc.operand_b;
    assume(0 <= hdr.p4calc.operand_b && hdr.p4calc.operand_b <= power_2_32() );
    _old_header_hdr.p4calc.operand_b := hdr.p4calc.operand_b;
    havoc hdr.p4calc.res;
    assume(0 <= hdr.p4calc.res && hdr.p4calc.res <= power_2_32() );
    _old_header_hdr.p4calc.res := hdr.p4calc.res;
    isValid[tmp_0] := false;
    emit[tmp_0] := false;
    havoc tmp_0.p;
    assume(0 <= tmp_0.p && tmp_0.p <= power_2_8() );
    _old_header_tmp_0.p := tmp_0.p;
    havoc tmp_0.four;
    assume(0 <= tmp_0.four && tmp_0.four <= power_2_8() );
    _old_header_tmp_0.four := tmp_0.four;
    havoc tmp_0.ver;
    assume(0 <= tmp_0.ver && tmp_0.ver <= power_2_8() );
    _old_header_tmp_0.ver := tmp_0.ver;
    havoc tmp_0.op;
    assume(0 <= tmp_0.op && tmp_0.op <= power_2_8() );
    _old_header_tmp_0.op := tmp_0.op;
    havoc tmp_0.operand_a;
    assume(0 <= tmp_0.operand_a && tmp_0.operand_a <= power_2_32() );
    _old_header_tmp_0.operand_a := tmp_0.operand_a;
    havoc tmp_0.operand_b;
    assume(0 <= tmp_0.operand_b && tmp_0.operand_b <= power_2_32() );
    _old_header_tmp_0.operand_b := tmp_0.operand_b;
    havoc tmp_0.res;
    assume(0 <= tmp_0.res && tmp_0.res <= power_2_32() );
    _old_header_tmp_0.res := tmp_0.res;
    isValid[tmp_2] := false;
    emit[tmp_2] := false;
    havoc tmp_2.p;
    assume(0 <= tmp_2.p && tmp_2.p <= power_2_8() );
    _old_header_tmp_2.p := tmp_2.p;
    havoc tmp_2.four;
    assume(0 <= tmp_2.four && tmp_2.four <= power_2_8() );
    _old_header_tmp_2.four := tmp_2.four;
    havoc tmp_2.ver;
    assume(0 <= tmp_2.ver && tmp_2.ver <= power_2_8() );
    _old_header_tmp_2.ver := tmp_2.ver;
    havoc tmp_2.op;
    assume(0 <= tmp_2.op && tmp_2.op <= power_2_8() );
    _old_header_tmp_2.op := tmp_2.op;
    havoc tmp_2.operand_a;
    assume(0 <= tmp_2.operand_a && tmp_2.operand_a <= power_2_32() );
    _old_header_tmp_2.operand_a := tmp_2.operand_a;
    havoc tmp_2.operand_b;
    assume(0 <= tmp_2.operand_b && tmp_2.operand_b <= power_2_32() );
    _old_header_tmp_2.operand_b := tmp_2.operand_b;
    havoc tmp_2.res;
    assume(0 <= tmp_2.res && tmp_2.res <= power_2_32() );
    _old_header_tmp_2.res := tmp_2.res;
    isValid[tmp_4] := false;
    emit[tmp_4] := false;
    havoc tmp_4.p;
    assume(0 <= tmp_4.p && tmp_4.p <= power_2_8() );
    _old_header_tmp_4.p := tmp_4.p;
    havoc tmp_4.four;
    assume(0 <= tmp_4.four && tmp_4.four <= power_2_8() );
    _old_header_tmp_4.four := tmp_4.four;
    havoc tmp_4.ver;
    assume(0 <= tmp_4.ver && tmp_4.ver <= power_2_8() );
    _old_header_tmp_4.ver := tmp_4.ver;
    havoc tmp_4.op;
    assume(0 <= tmp_4.op && tmp_4.op <= power_2_8() );
    _old_header_tmp_4.op := tmp_4.op;
    havoc tmp_4.operand_a;
    assume(0 <= tmp_4.operand_a && tmp_4.operand_a <= power_2_32() );
    _old_header_tmp_4.operand_a := tmp_4.operand_a;
    havoc tmp_4.operand_b;
    assume(0 <= tmp_4.operand_b && tmp_4.operand_b <= power_2_32() );
    _old_header_tmp_4.operand_b := tmp_4.operand_b;
    havoc tmp_4.res;
    assume(0 <= tmp_4.res && tmp_4.res <= power_2_32() );
    _old_header_tmp_4.res := tmp_4.res;
}
procedure {:inline 1} main()
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.p4calc.four, _old_header_hdr.p4calc.op, _old_header_hdr.p4calc.operand_a, _old_header_hdr.p4calc.operand_b, _old_header_hdr.p4calc.p, _old_header_hdr.p4calc.res, _old_header_hdr.p4calc.ver, _old_header_tmp_0.four, _old_header_tmp_0.op, _old_header_tmp_0.operand_a, _old_header_tmp_0.operand_b, _old_header_tmp_0.p, _old_header_tmp_0.res, _old_header_tmp_0.ver, _old_header_tmp_2.four, _old_header_tmp_2.op, _old_header_tmp_2.operand_a, _old_header_tmp_2.operand_b, _old_header_tmp_2.p, _old_header_tmp_2.res, _old_header_tmp_2.ver, _old_header_tmp_4.four, _old_header_tmp_4.op, _old_header_tmp_4.operand_a, _old_header_tmp_4.operand_b, _old_header_tmp_4.p, _old_header_tmp_4.res, _old_header_tmp_4.ver, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.p4calc.four, hdr.p4calc.op, hdr.p4calc.operand_a, hdr.p4calc.operand_b, hdr.p4calc.p, hdr.p4calc.res, hdr.p4calc.ver, isValid, standard_metadata.egress_spec, tmp, tmp_0, tmp_0.four, tmp_0.op, tmp_0.operand_a, tmp_0.operand_b, tmp_0.p, tmp_0.res, tmp_0.ver, tmp_1, tmp_2, tmp_2.four, tmp_2.op, tmp_2.operand_a, tmp_2.operand_b, tmp_2.p, tmp_2.res, tmp_2.ver, tmp_3, tmp_4, tmp_4.four, tmp_4.op, tmp_4.operand_a, tmp_4.operand_b, tmp_4.p, tmp_4.res, tmp_4.ver, tmp_5;
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
	modifies _old_header_hdr.ethernet.dstAddr, _old_header_hdr.ethernet.etherType, _old_header_hdr.ethernet.srcAddr, _old_header_hdr.p4calc.four, _old_header_hdr.p4calc.op, _old_header_hdr.p4calc.operand_a, _old_header_hdr.p4calc.operand_b, _old_header_hdr.p4calc.p, _old_header_hdr.p4calc.res, _old_header_hdr.p4calc.ver, _old_header_tmp_0.four, _old_header_tmp_0.op, _old_header_tmp_0.operand_a, _old_header_tmp_0.operand_b, _old_header_tmp_0.p, _old_header_tmp_0.res, _old_header_tmp_0.ver, _old_header_tmp_2.four, _old_header_tmp_2.op, _old_header_tmp_2.operand_a, _old_header_tmp_2.operand_b, _old_header_tmp_2.p, _old_header_tmp_2.res, _old_header_tmp_2.ver, _old_header_tmp_4.four, _old_header_tmp_4.op, _old_header_tmp_4.operand_a, _old_header_tmp_4.operand_b, _old_header_tmp_4.p, _old_header_tmp_4.res, _old_header_tmp_4.ver, calculate_0.action_run, drop, emit, forward, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.p4calc.four, hdr.p4calc.op, hdr.p4calc.operand_a, hdr.p4calc.operand_b, hdr.p4calc.p, hdr.p4calc.res, hdr.p4calc.ver, isValid, standard_metadata.egress_spec, tmp, tmp_0, tmp_0.four, tmp_0.op, tmp_0.operand_a, tmp_0.operand_b, tmp_0.p, tmp_0.res, tmp_0.ver, tmp_1, tmp_2, tmp_2.four, tmp_2.op, tmp_2.operand_a, tmp_2.operand_b, tmp_2.p, tmp_2.res, tmp_2.ver, tmp_3, tmp_4, tmp_4.four, tmp_4.op, tmp_4.operand_a, tmp_4.operand_b, tmp_4.p, tmp_4.res, tmp_4.ver, tmp_5;
{
    call calculate_0.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;

// Action operation_add
procedure {:inline 1} operation_add()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    hdr.p4calc.res := add.bv32(hdr.p4calc.operand_a, hdr.p4calc.operand_b);
    tmp_5 := hdr.ethernet.dstAddr;
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    hdr.ethernet.srcAddr := tmp_5;
    standard_metadata.egress_spec := standard_metadata.ingress_port;
    forward := true;
}

// Action operation_and
procedure {:inline 1} operation_and()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    hdr.p4calc.res := band.bv32(hdr.p4calc.operand_a, hdr.p4calc.operand_b);
    tmp_5 := hdr.ethernet.dstAddr;
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    hdr.ethernet.srcAddr := tmp_5;
    standard_metadata.egress_spec := standard_metadata.ingress_port;
    forward := true;
}

// Action operation_drop
procedure {:inline 1} operation_drop()
	modifies drop;
{
    call mark_to_drop();
}

// Action operation_drop_2
procedure {:inline 1} operation_drop_2()
	modifies drop;
{
    call mark_to_drop();
}

// Action operation_or
procedure {:inline 1} operation_or()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    hdr.p4calc.res := bor.bv32(hdr.p4calc.operand_a, hdr.p4calc.operand_b);
    tmp_5 := hdr.ethernet.dstAddr;
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    hdr.ethernet.srcAddr := tmp_5;
    standard_metadata.egress_spec := standard_metadata.ingress_port;
    forward := true;
}

// Action operation_sub
procedure {:inline 1} operation_sub()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    hdr.p4calc.res := sub.bv32(hdr.p4calc.operand_a, hdr.p4calc.operand_b);
    tmp_5 := hdr.ethernet.dstAddr;
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    hdr.ethernet.srcAddr := tmp_5;
    standard_metadata.egress_spec := standard_metadata.ingress_port;
    forward := true;
}

// Action operation_xor
procedure {:inline 1} operation_xor()
	modifies forward, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.p4calc.res, standard_metadata.egress_spec, tmp_5;
{
    hdr.p4calc.res := bxor.bv32(hdr.p4calc.operand_a, hdr.p4calc.operand_b);
    tmp_5 := hdr.ethernet.dstAddr;
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    hdr.ethernet.srcAddr := tmp_5;
    standard_metadata.egress_spec := standard_metadata.ingress_port;
    forward := true;
}
procedure packet_in.extract(header:Ref);
    ensures (isValid[header] == true);
	modifies isValid;

//Parser State parse_p4calc
procedure {:inline 1} parse_p4calc()
	modifies isValid;
{
    call packet_in.extract(hdr.p4calc);
    call accept();
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
	modifies isValid, tmp, tmp_0, tmp_1, tmp_2, tmp_3, tmp_4;
{
    call packet_in.extract(hdr.ethernet);
    if(hdr.ethernet.etherType == 4660){
        call check_p4calc();
    }
}
