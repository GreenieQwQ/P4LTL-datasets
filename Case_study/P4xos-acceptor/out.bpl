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
type EthernetAddress = int;
type IPv4Address = int;
type PortId = int;

// Struct headers

// Header ethernet_t
var hdr.ethernet:Ref;
var hdr.ethernet.valid:bool;
var hdr.ethernet.dstAddr:EthernetAddress;
var _old_hdr.ethernet.dstAddr:EthernetAddress;
var hdr.ethernet.srcAddr:EthernetAddress;
var _old_hdr.ethernet.srcAddr:EthernetAddress;
var hdr.ethernet.etherType:int;
var _old_hdr.ethernet.etherType:int;

// Header arp_t
var hdr.arp:Ref;
var hdr.arp.valid:bool;
var hdr.arp.hrd:int;
var _old_hdr.arp.hrd:int;
var hdr.arp.pro:int;
var _old_hdr.arp.pro:int;
var hdr.arp.hln:int;
var _old_hdr.arp.hln:int;
var hdr.arp.pln:int;
var _old_hdr.arp.pln:int;
var hdr.arp.op:int;
var _old_hdr.arp.op:int;
var hdr.arp.sha:int;
var _old_hdr.arp.sha:int;
var hdr.arp.spa:int;
var _old_hdr.arp.spa:int;
var hdr.arp.tha:int;
var _old_hdr.arp.tha:int;
var hdr.arp.tpa:int;
var _old_hdr.arp.tpa:int;

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
var hdr.ipv4.srcAddr:IPv4Address;
var _old_hdr.ipv4.srcAddr:IPv4Address;
var hdr.ipv4.dstAddr:IPv4Address;
var _old_hdr.ipv4.dstAddr:IPv4Address;

// Header icmp_t
var hdr.icmp:Ref;
var hdr.icmp.valid:bool;
var hdr.icmp.icmpType:int;
var _old_hdr.icmp.icmpType:int;
var hdr.icmp.icmpCode:int;
var _old_hdr.icmp.icmpCode:int;
var hdr.icmp.hdrChecksum:int;
var _old_hdr.icmp.hdrChecksum:int;
var hdr.icmp.identifier:int;
var _old_hdr.icmp.identifier:int;
var hdr.icmp.seqNumber:int;
var _old_hdr.icmp.seqNumber:int;
var hdr.icmp.payload:int;
var _old_hdr.icmp.payload:int;

// Header udp_t
var hdr.udp:Ref;
var hdr.udp.valid:bool;
var hdr.udp.srcPort:int;
var _old_hdr.udp.srcPort:int;
var hdr.udp.dstPort:int;
var _old_hdr.udp.dstPort:int;
var hdr.udp.length_:int;
var _old_hdr.udp.length_:int;
var hdr.udp.checksum:int;
var _old_hdr.udp.checksum:int;

// Header paxos_t
var hdr.paxos:Ref;
var hdr.paxos.valid:bool;
var hdr.paxos.msgtype:int;
var _old_hdr.paxos.msgtype:int;
var hdr.paxos.inst:int;
var _old_hdr.paxos.inst:int;
var hdr.paxos.rnd:int;
var _old_hdr.paxos.rnd:int;
var hdr.paxos.vrnd:int;
var _old_hdr.paxos.vrnd:int;
var hdr.paxos.acptid:int;
var _old_hdr.paxos.acptid:int;
var hdr.paxos.paxoslen:int;
var _old_hdr.paxos.paxoslen:int;
var hdr.paxos.paxosval:int;
var _old_hdr.paxos.paxosval:int;

// Struct paxos_metadata_t

// Struct metadata
var meta.paxos_metadata.round:int;
var meta.paxos_metadata.set_drop:int;
var meta.paxos_metadata.ack_count:int;
var meta.paxos_metadata.ack_acceptors:int;
var ipdst_0:int;

// Register registerAcceptorID_0
var registerAcceptorID_0:[int]int;
const registerAcceptorID_0.size:int;
axiom registerAcceptorID_0.size == 1;

// Register registerRound_0
var registerRound_0:[int]int;
const registerRound_0.size:int;
axiom registerRound_0.size == 65536;

// Register registerVRound_0
var registerVRound_0:[int]int;
const registerVRound_0.size:int;
axiom registerVRound_0.size == 65536;

// Register registerValue_0
var registerValue_0:[int]int;
const registerValue_0.size:int;
axiom registerValue_0.size == 65536;

// Register learner_mac_address_0
var learner_mac_address_0:[int]int;
const learner_mac_address_0.size:int;
axiom learner_mac_address_0.size == 1;

// Register learner_address_0
var learner_address_0:[int]int;
const learner_address_0.size:int;
axiom learner_address_0.size == 1;

// Table acceptor_tbl_0 Actionlist Declaration
type acceptor_tbl_0.action;
const unique acceptor_tbl_0.action.handle_1a : acceptor_tbl_0.action;
const unique acceptor_tbl_0.action.handle_2a : acceptor_tbl_0.action;
var acceptor_tbl_0.action_run : acceptor_tbl_0.action;
var acceptor_tbl_0.hit : bool;

// Table transport_tbl_0 Actionlist Declaration
type transport_tbl_0.action;
const unique transport_tbl_0.action._drop_4 : transport_tbl_0.action;
var transport_tbl_0.action_run : transport_tbl_0.action;
var transport_tbl_0.hit : bool;

// Register my_mac_address_0
var my_mac_address_0:[int]int;
const my_mac_address_0.size:int;
axiom my_mac_address_0.size == 1;

// Register my_ip_address_0
var my_ip_address_0:[int]int;
const my_ip_address_0.size:int;
axiom my_ip_address_0.size == 1;

// Table arp_tbl_0 Actionlist Declaration
type arp_tbl_0.action;
const unique arp_tbl_0.action.handle_arp_request : arp_tbl_0.action;
const unique arp_tbl_0.action.handle_arp_reply : arp_tbl_0.action;
var arp_tbl_0.action_run : arp_tbl_0.action;
var arp_tbl_0.hit : bool;
function {:inline true} add.bv16(left:int, right:int) : int{((left%power_2_16())+(right%power_2_16()))%power_2_16()}

// Table icmp_tbl_0 Actionlist Declaration
type icmp_tbl_0.action;
const unique icmp_tbl_0.action.handle_icmp_request : icmp_tbl_0.action;
const unique icmp_tbl_0.action.handle_icmp_reply : icmp_tbl_0.action;
var icmp_tbl_0.action_run : icmp_tbl_0.action;
var icmp_tbl_0.hit : bool;
function {:inline true} bsge.bv16(left:int, right:int) : bool{left >= right}

// Table place_holder_table_0 Actionlist Declaration
type place_holder_table_0.action;
var place_holder_table_0.action_run : place_holder_table_0.action;
var place_holder_table_0.hit : bool;
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
function {:inline true} power_2_65 () : int{power_2_50()*power_2_15() }
function {:inline true} power_2_66 () : int{power_2_50()*power_2_16() }
function {:inline true} power_2_67 () : int{power_2_50()*power_2_17() }
function {:inline true} power_2_68 () : int{power_2_50()*power_2_18() }
function {:inline true} power_2_69 () : int{power_2_50()*power_2_19() }
function {:inline true} power_2_70 () : int{power_2_50()*power_2_20() }
function {:inline true} power_2_71 () : int{power_2_50()*power_2_21() }
function {:inline true} power_2_72 () : int{power_2_50()*power_2_22() }
function {:inline true} power_2_73 () : int{power_2_50()*power_2_23() }
function {:inline true} power_2_74 () : int{power_2_50()*power_2_24() }
function {:inline true} power_2_75 () : int{power_2_50()*power_2_25() }
function {:inline true} power_2_76 () : int{power_2_50()*power_2_26() }
function {:inline true} power_2_77 () : int{power_2_50()*power_2_27() }
function {:inline true} power_2_78 () : int{power_2_50()*power_2_28() }
function {:inline true} power_2_79 () : int{power_2_50()*power_2_29() }
function {:inline true} power_2_80 () : int{power_2_50()*power_2_30() }
function {:inline true} power_2_81 () : int{power_2_50()*power_2_31() }
function {:inline true} power_2_82 () : int{power_2_50()*power_2_32() }
function {:inline true} power_2_83 () : int{power_2_50()*power_2_33() }
function {:inline true} power_2_84 () : int{power_2_50()*power_2_34() }
function {:inline true} power_2_85 () : int{power_2_50()*power_2_35() }
function {:inline true} power_2_86 () : int{power_2_50()*power_2_36() }
function {:inline true} power_2_87 () : int{power_2_50()*power_2_37() }
function {:inline true} power_2_88 () : int{power_2_50()*power_2_38() }
function {:inline true} power_2_89 () : int{power_2_50()*power_2_39() }
function {:inline true} power_2_90 () : int{power_2_50()*power_2_40() }
function {:inline true} power_2_91 () : int{power_2_50()*power_2_41() }
function {:inline true} power_2_92 () : int{power_2_50()*power_2_42() }
function {:inline true} power_2_93 () : int{power_2_50()*power_2_43() }
function {:inline true} power_2_94 () : int{power_2_50()*power_2_44() }
function {:inline true} power_2_95 () : int{power_2_50()*power_2_45() }
function {:inline true} power_2_96 () : int{power_2_50()*power_2_46() }
function {:inline true} power_2_97 () : int{power_2_50()*power_2_47() }
function {:inline true} power_2_98 () : int{power_2_50()*power_2_48() }
function {:inline true} power_2_99 () : int{power_2_50()*power_2_49() }
function {:inline true} power_2_100 () : int{power_2_50()*power_2_50() }
function {:inline true} power_2_101 () : int{power_2_50()*power_2_50()*power_2_1() }
function {:inline true} power_2_102 () : int{power_2_50()*power_2_50()*power_2_2() }
function {:inline true} power_2_103 () : int{power_2_50()*power_2_50()*power_2_3() }
function {:inline true} power_2_104 () : int{power_2_50()*power_2_50()*power_2_4() }
function {:inline true} power_2_105 () : int{power_2_50()*power_2_50()*power_2_5() }
function {:inline true} power_2_106 () : int{power_2_50()*power_2_50()*power_2_6() }
function {:inline true} power_2_107 () : int{power_2_50()*power_2_50()*power_2_7() }
function {:inline true} power_2_108 () : int{power_2_50()*power_2_50()*power_2_8() }
function {:inline true} power_2_109 () : int{power_2_50()*power_2_50()*power_2_9() }
function {:inline true} power_2_110 () : int{power_2_50()*power_2_50()*power_2_10() }
function {:inline true} power_2_111 () : int{power_2_50()*power_2_50()*power_2_11() }
function {:inline true} power_2_112 () : int{power_2_50()*power_2_50()*power_2_12() }
function {:inline true} power_2_113 () : int{power_2_50()*power_2_50()*power_2_13() }
function {:inline true} power_2_114 () : int{power_2_50()*power_2_50()*power_2_14() }
function {:inline true} power_2_115 () : int{power_2_50()*power_2_50()*power_2_15() }
function {:inline true} power_2_116 () : int{power_2_50()*power_2_50()*power_2_16() }
function {:inline true} power_2_117 () : int{power_2_50()*power_2_50()*power_2_17() }
function {:inline true} power_2_118 () : int{power_2_50()*power_2_50()*power_2_18() }
function {:inline true} power_2_119 () : int{power_2_50()*power_2_50()*power_2_19() }
function {:inline true} power_2_120 () : int{power_2_50()*power_2_50()*power_2_20() }
function {:inline true} power_2_121 () : int{power_2_50()*power_2_50()*power_2_21() }
function {:inline true} power_2_122 () : int{power_2_50()*power_2_50()*power_2_22() }
function {:inline true} power_2_123 () : int{power_2_50()*power_2_50()*power_2_23() }
function {:inline true} power_2_124 () : int{power_2_50()*power_2_50()*power_2_24() }
function {:inline true} power_2_125 () : int{power_2_50()*power_2_50()*power_2_25() }
function {:inline true} power_2_126 () : int{power_2_50()*power_2_50()*power_2_26() }
function {:inline true} power_2_127 () : int{power_2_50()*power_2_50()*power_2_27() }
function {:inline true} power_2_128 () : int{power_2_50()*power_2_50()*power_2_28() }
function {:inline true} power_2_129 () : int{power_2_50()*power_2_50()*power_2_29() }
function {:inline true} power_2_130 () : int{power_2_50()*power_2_50()*power_2_30() }
function {:inline true} power_2_131 () : int{power_2_50()*power_2_50()*power_2_31() }
function {:inline true} power_2_132 () : int{power_2_50()*power_2_50()*power_2_32() }
function {:inline true} power_2_133 () : int{power_2_50()*power_2_50()*power_2_33() }
function {:inline true} power_2_134 () : int{power_2_50()*power_2_50()*power_2_34() }
function {:inline true} power_2_135 () : int{power_2_50()*power_2_50()*power_2_35() }
function {:inline true} power_2_136 () : int{power_2_50()*power_2_50()*power_2_36() }
function {:inline true} power_2_137 () : int{power_2_50()*power_2_50()*power_2_37() }
function {:inline true} power_2_138 () : int{power_2_50()*power_2_50()*power_2_38() }
function {:inline true} power_2_139 () : int{power_2_50()*power_2_50()*power_2_39() }
function {:inline true} power_2_140 () : int{power_2_50()*power_2_50()*power_2_40() }
function {:inline true} power_2_141 () : int{power_2_50()*power_2_50()*power_2_41() }
function {:inline true} power_2_142 () : int{power_2_50()*power_2_50()*power_2_42() }
function {:inline true} power_2_143 () : int{power_2_50()*power_2_50()*power_2_43() }
function {:inline true} power_2_144 () : int{power_2_50()*power_2_50()*power_2_44() }
function {:inline true} power_2_145 () : int{power_2_50()*power_2_50()*power_2_45() }
function {:inline true} power_2_146 () : int{power_2_50()*power_2_50()*power_2_46() }
function {:inline true} power_2_147 () : int{power_2_50()*power_2_50()*power_2_47() }
function {:inline true} power_2_148 () : int{power_2_50()*power_2_50()*power_2_48() }
function {:inline true} power_2_149 () : int{power_2_50()*power_2_50()*power_2_49() }
function {:inline true} power_2_150 () : int{power_2_50()*power_2_50()*power_2_50() }
function {:inline true} power_2_151 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_1() }
function {:inline true} power_2_152 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_2() }
function {:inline true} power_2_153 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_3() }
function {:inline true} power_2_154 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_4() }
function {:inline true} power_2_155 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_5() }
function {:inline true} power_2_156 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_6() }
function {:inline true} power_2_157 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_7() }
function {:inline true} power_2_158 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_8() }
function {:inline true} power_2_159 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_9() }
function {:inline true} power_2_160 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_10() }
function {:inline true} power_2_161 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_11() }
function {:inline true} power_2_162 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_12() }
function {:inline true} power_2_163 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_13() }
function {:inline true} power_2_164 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_14() }
function {:inline true} power_2_165 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_15() }
function {:inline true} power_2_166 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_16() }
function {:inline true} power_2_167 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_17() }
function {:inline true} power_2_168 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_18() }
function {:inline true} power_2_169 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_19() }
function {:inline true} power_2_170 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_20() }
function {:inline true} power_2_171 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_21() }
function {:inline true} power_2_172 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_22() }
function {:inline true} power_2_173 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_23() }
function {:inline true} power_2_174 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_24() }
function {:inline true} power_2_175 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_25() }
function {:inline true} power_2_176 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_26() }
function {:inline true} power_2_177 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_27() }
function {:inline true} power_2_178 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_28() }
function {:inline true} power_2_179 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_29() }
function {:inline true} power_2_180 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_30() }
function {:inline true} power_2_181 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_31() }
function {:inline true} power_2_182 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_32() }
function {:inline true} power_2_183 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_33() }
function {:inline true} power_2_184 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_34() }
function {:inline true} power_2_185 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_35() }
function {:inline true} power_2_186 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_36() }
function {:inline true} power_2_187 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_37() }
function {:inline true} power_2_188 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_38() }
function {:inline true} power_2_189 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_39() }
function {:inline true} power_2_190 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_40() }
function {:inline true} power_2_191 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_41() }
function {:inline true} power_2_192 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_42() }
function {:inline true} power_2_193 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_43() }
function {:inline true} power_2_194 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_44() }
function {:inline true} power_2_195 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_45() }
function {:inline true} power_2_196 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_46() }
function {:inline true} power_2_197 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_47() }
function {:inline true} power_2_198 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_48() }
function {:inline true} power_2_199 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_49() }
function {:inline true} power_2_200 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50() }
function {:inline true} power_2_201 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_1() }
function {:inline true} power_2_202 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_2() }
function {:inline true} power_2_203 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_3() }
function {:inline true} power_2_204 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_4() }
function {:inline true} power_2_205 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_5() }
function {:inline true} power_2_206 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_6() }
function {:inline true} power_2_207 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_7() }
function {:inline true} power_2_208 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_8() }
function {:inline true} power_2_209 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_9() }
function {:inline true} power_2_210 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_10() }
function {:inline true} power_2_211 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_11() }
function {:inline true} power_2_212 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_12() }
function {:inline true} power_2_213 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_13() }
function {:inline true} power_2_214 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_14() }
function {:inline true} power_2_215 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_15() }
function {:inline true} power_2_216 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_16() }
function {:inline true} power_2_217 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_17() }
function {:inline true} power_2_218 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_18() }
function {:inline true} power_2_219 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_19() }
function {:inline true} power_2_220 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_20() }
function {:inline true} power_2_221 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_21() }
function {:inline true} power_2_222 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_22() }
function {:inline true} power_2_223 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_23() }
function {:inline true} power_2_224 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_24() }
function {:inline true} power_2_225 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_25() }
function {:inline true} power_2_226 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_26() }
function {:inline true} power_2_227 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_27() }
function {:inline true} power_2_228 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_28() }
function {:inline true} power_2_229 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_29() }
function {:inline true} power_2_230 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_30() }
function {:inline true} power_2_231 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_31() }
function {:inline true} power_2_232 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_32() }
function {:inline true} power_2_233 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_33() }
function {:inline true} power_2_234 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_34() }
function {:inline true} power_2_235 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_35() }
function {:inline true} power_2_236 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_36() }
function {:inline true} power_2_237 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_37() }
function {:inline true} power_2_238 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_38() }
function {:inline true} power_2_239 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_39() }
function {:inline true} power_2_240 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_40() }
function {:inline true} power_2_241 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_41() }
function {:inline true} power_2_242 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_42() }
function {:inline true} power_2_243 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_43() }
function {:inline true} power_2_244 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_44() }
function {:inline true} power_2_245 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_45() }
function {:inline true} power_2_246 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_46() }
function {:inline true} power_2_247 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_47() }
function {:inline true} power_2_248 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_48() }
function {:inline true} power_2_249 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_49() }
function {:inline true} power_2_250 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50() }
function {:inline true} power_2_251 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_1() }
function {:inline true} power_2_252 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_2() }
function {:inline true} power_2_253 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_3() }
function {:inline true} power_2_254 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_4() }
function {:inline true} power_2_255 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_5() }
function {:inline true} power_2_256 () : int{power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_50()*power_2_6() }
function {:inline true} band(left:int, right:int) : int{((left+right)-(left+right)%2)/2}
function {:inline true} bxor(left:int, right:int) : int{(left+right)%2}
function {:inline true} bor(left:int, right:int) : int{(left+right)%2+((left+right)-((left+right)%2))/2}
function {:inline true} bnot(num:int) : int{1-num%2}

// Action NoAction_0
procedure {:inline 1} NoAction_0()
{
}
procedure ULTIMATE.start()
	modifies _old_hdr.arp.hln, _old_hdr.arp.hrd, _old_hdr.arp.op, _old_hdr.arp.pln, _old_hdr.arp.pro, _old_hdr.arp.sha, _old_hdr.arp.spa, _old_hdr.arp.tha, _old_hdr.arp.tpa, _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.hdrChecksum, _old_hdr.icmp.icmpCode, _old_hdr.icmp.icmpType, _old_hdr.icmp.identifier, _old_hdr.icmp.payload, _old_hdr.icmp.seqNumber, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.paxos.acptid, _old_hdr.paxos.inst, _old_hdr.paxos.msgtype, _old_hdr.paxos.paxoslen, _old_hdr.paxos.paxosval, _old_hdr.paxos.rnd, _old_hdr.paxos.vrnd, _old_hdr.udp.checksum, _old_hdr.udp.dstPort, _old_hdr.udp.length_, _old_hdr.udp.srcPort, acceptor_tbl_0.action_run, arp_tbl_0.action_run, drop, emit, forward, hdr.arp.hln, hdr.arp.hrd, hdr.arp.op, hdr.arp.pln, hdr.arp.pro, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.arp.valid, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.hdrChecksum, hdr.icmp.icmpCode, hdr.icmp.icmpType, hdr.icmp.identifier, hdr.icmp.payload, hdr.icmp.seqNumber, hdr.icmp.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.paxos.acptid, hdr.paxos.inst, hdr.paxos.msgtype, hdr.paxos.paxoslen, hdr.paxos.paxosval, hdr.paxos.rnd, hdr.paxos.valid, hdr.paxos.vrnd, hdr.udp.checksum, hdr.udp.dstPort, hdr.udp.length_, hdr.udp.srcPort, hdr.udp.valid, icmp_tbl_0.action_run, ipdst_0, meta.paxos_metadata.round, place_holder_table_0.action_run, registerRound_0, registerVRound_0, registerValue_0, standard_metadata.egress_spec, transport_tbl_0.action_run;
{
    call mainProcedure();
}

// Action _drop
procedure {:inline 1} _drop()
	modifies drop;
{
    call mark_to_drop();
}

// Action _drop_4
procedure {:inline 1} _drop_4()
	modifies drop;
{
    call mark_to_drop();
}

// Action _drop_5
procedure {:inline 1} _drop_5()
	modifies drop;
{
    call mark_to_drop();
}

// Action _drop_6
procedure {:inline 1} _drop_6()
	modifies drop;
{
    call mark_to_drop();
}

// Parser _parser_TopParser
procedure {:inline 1} _parser_TopParser()
	modifies drop, hdr.arp.valid, hdr.ethernet.valid, hdr.icmp.valid, hdr.ipv4.valid, hdr.paxos.valid, hdr.udp.valid;
{
    call start();
}
procedure {:inline 1} accept()
{
}

procedure acceptor_tbl_0.action_run.limit();
    ensures(acceptor_tbl_0.action_run==acceptor_tbl_0.action.handle_1a || acceptor_tbl_0.action_run==acceptor_tbl_0.action.handle_2a);
	modifies acceptor_tbl_0.action_run;

// Table acceptor_tbl_0
procedure {:inline 1} acceptor_tbl_0.apply()
	modifies hdr.paxos.acptid, hdr.paxos.msgtype, hdr.paxos.paxosval, hdr.paxos.vrnd, registerRound_0, registerVRound_0, registerValue_0;
{
    var handle_2a.learner_port:int;
    var handle_1a.learner_port:int;
    hdr.paxos.msgtype := hdr.paxos.msgtype;

    call acceptor_tbl_0.apply_table_entry();

    action_handle_1a:
    if(acceptor_tbl_0.action_run == acceptor_tbl_0.action.handle_1a){
        call handle_1a(handle_1a.learner_port);
    }

    action_handle_2a:
    if(acceptor_tbl_0.action_run == acceptor_tbl_0.action.handle_2a){
        call handle_2a(handle_2a.learner_port);
    }
}

// Table Entry acceptor_tbl_0.apply_table_entry
procedure acceptor_tbl_0.apply_table_entry();

// Table Exit acceptor_tbl_0.apply_table_exit
procedure acceptor_tbl_0.apply_table_exit();

procedure arp_tbl_0.action_run.limit();
    ensures(arp_tbl_0.action_run==arp_tbl_0.action.handle_arp_request || arp_tbl_0.action_run==arp_tbl_0.action.handle_arp_reply);
	modifies arp_tbl_0.action_run;

// Table arp_tbl_0
procedure {:inline 1} arp_tbl_0.apply()
	modifies forward, hdr.arp.op, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, standard_metadata.egress_spec;
{
    hdr.arp.op := hdr.arp.op;

    call arp_tbl_0.apply_table_entry();

    action_handle_arp_request:
    if(arp_tbl_0.action_run == arp_tbl_0.action.handle_arp_request){
        call handle_arp_request();
    }

    action_handle_arp_reply:
    if(arp_tbl_0.action_run == arp_tbl_0.action.handle_arp_reply){
        call handle_arp_reply();
    }
}

// Table Entry arp_tbl_0.apply_table_entry
procedure arp_tbl_0.apply_table_entry();

// Table Exit arp_tbl_0.apply_table_exit
procedure arp_tbl_0.apply_table_exit();
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

// Control egress
procedure {:inline 1} egress()
{
    call place_holder_table_0.apply();
}

// Action forward
procedure {:inline 1} forward(port:PortId, mac_dst:int, ip_dst:int, udp_dst:int)
	modifies forward, hdr.ethernet.dstAddr, hdr.ipv4.dstAddr, hdr.udp.dstPort, standard_metadata.egress_spec;
{
    standard_metadata.egress_spec := port;
    forward := true;
    hdr.ethernet.dstAddr := mac_dst;
    hdr.ipv4.dstAddr := ip_dst;
    hdr.udp.dstPort := udp_dst;
}

// Action handle_1a
procedure {:inline 1} handle_1a(learner_port:int)
	modifies hdr.paxos.acptid, hdr.paxos.msgtype, hdr.paxos.paxosval, hdr.paxos.vrnd, registerRound_0;
{
    hdr.paxos.msgtype := 1;
    // read
    hdr.paxos.vrnd := registerVRound_0.read(registerVRound_0, hdr.paxos.inst);
    // read
    hdr.paxos.paxosval := registerValue_0.read(registerValue_0, hdr.paxos.inst);
    // read
    hdr.paxos.acptid := registerAcceptorID_0.read(registerAcceptorID_0, 0);
    // write
    call registerRound_0.write(hdr.paxos.inst, hdr.paxos.rnd);
}

// Action handle_2a
procedure {:inline 1} handle_2a(learner_port:int)
	modifies hdr.paxos.acptid, hdr.paxos.msgtype, registerRound_0, registerVRound_0, registerValue_0;
{
    hdr.paxos.msgtype := 3;
    // read
    hdr.paxos.acptid := registerAcceptorID_0.read(registerAcceptorID_0, 0);
    // write
    call registerRound_0.write(hdr.paxos.inst, hdr.paxos.rnd);
    // write
    call registerVRound_0.write(hdr.paxos.inst, hdr.paxos.rnd);
    // write
    call registerValue_0.write(hdr.paxos.inst, hdr.paxos.paxosval);
}

// Action handle_arp_reply
procedure {:inline 1} handle_arp_reply()
{
}

// Action handle_arp_request
procedure {:inline 1} handle_arp_request()
	modifies forward, hdr.arp.op, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, standard_metadata.egress_spec;
{
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    // read
    hdr.ethernet.srcAddr := my_mac_address_0.read(my_mac_address_0, 0);
    hdr.arp.op := 2;
    hdr.arp.tha := hdr.arp.sha;
    hdr.arp.tpa := hdr.arp.spa;
    // read
    hdr.arp.sha := my_mac_address_0.read(my_mac_address_0, 0);
    // read
    hdr.arp.spa := my_ip_address_0.read(my_ip_address_0, 0);
    standard_metadata.egress_spec := standard_metadata.ingress_port;
    forward := true;
}

// Action handle_icmp_reply
procedure {:inline 1} handle_icmp_reply()
{
}

// Action handle_icmp_request
procedure {:inline 1} handle_icmp_request()
	modifies hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.icmp.hdrChecksum, hdr.icmp.icmpType, hdr.ipv4.dstAddr, hdr.ipv4.srcAddr, ipdst_0;
{
    hdr.ethernet.dstAddr := hdr.ethernet.srcAddr;
    // read
    hdr.ethernet.srcAddr := my_mac_address_0.read(my_mac_address_0, 0);
    ipdst_0 := hdr.ipv4.dstAddr;
    hdr.ipv4.dstAddr := hdr.ipv4.srcAddr;
    hdr.ipv4.srcAddr := ipdst_0;
    hdr.icmp.icmpType := 0;
    hdr.icmp.hdrChecksum := add.bv16(hdr.icmp.hdrChecksum, 2048);
}
procedure {:inline 1} havocProcedure()
	modifies _old_hdr.arp.hln, _old_hdr.arp.hrd, _old_hdr.arp.op, _old_hdr.arp.pln, _old_hdr.arp.pro, _old_hdr.arp.sha, _old_hdr.arp.spa, _old_hdr.arp.tha, _old_hdr.arp.tpa, _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.hdrChecksum, _old_hdr.icmp.icmpCode, _old_hdr.icmp.icmpType, _old_hdr.icmp.identifier, _old_hdr.icmp.payload, _old_hdr.icmp.seqNumber, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.paxos.acptid, _old_hdr.paxos.inst, _old_hdr.paxos.msgtype, _old_hdr.paxos.paxoslen, _old_hdr.paxos.paxosval, _old_hdr.paxos.rnd, _old_hdr.paxos.vrnd, _old_hdr.udp.checksum, _old_hdr.udp.dstPort, _old_hdr.udp.length_, _old_hdr.udp.srcPort, emit, hdr.arp.hln, hdr.arp.hrd, hdr.arp.op, hdr.arp.pln, hdr.arp.pro, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.arp.valid, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.hdrChecksum, hdr.icmp.icmpCode, hdr.icmp.icmpType, hdr.icmp.identifier, hdr.icmp.payload, hdr.icmp.seqNumber, hdr.icmp.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.paxos.acptid, hdr.paxos.inst, hdr.paxos.msgtype, hdr.paxos.paxoslen, hdr.paxos.paxosval, hdr.paxos.rnd, hdr.paxos.valid, hdr.paxos.vrnd, hdr.udp.checksum, hdr.udp.dstPort, hdr.udp.length_, hdr.udp.srcPort, hdr.udp.valid;
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
    hdr.arp.valid := false;
    emit[hdr.arp] := false;
    havoc hdr.arp.hrd;
    assume(0 <= hdr.arp.hrd && hdr.arp.hrd <= power_2_16() );
    _old_hdr.arp.hrd := hdr.arp.hrd;
    havoc hdr.arp.pro;
    assume(0 <= hdr.arp.pro && hdr.arp.pro <= power_2_16() );
    _old_hdr.arp.pro := hdr.arp.pro;
    havoc hdr.arp.hln;
    assume(0 <= hdr.arp.hln && hdr.arp.hln <= power_2_8() );
    _old_hdr.arp.hln := hdr.arp.hln;
    havoc hdr.arp.pln;
    assume(0 <= hdr.arp.pln && hdr.arp.pln <= power_2_8() );
    _old_hdr.arp.pln := hdr.arp.pln;
    havoc hdr.arp.op;
    assume(0 <= hdr.arp.op && hdr.arp.op <= power_2_16() );
    _old_hdr.arp.op := hdr.arp.op;
    havoc hdr.arp.sha;
    assume(0 <= hdr.arp.sha && hdr.arp.sha <= power_2_48() );
    _old_hdr.arp.sha := hdr.arp.sha;
    havoc hdr.arp.spa;
    assume(0 <= hdr.arp.spa && hdr.arp.spa <= power_2_32() );
    _old_hdr.arp.spa := hdr.arp.spa;
    havoc hdr.arp.tha;
    assume(0 <= hdr.arp.tha && hdr.arp.tha <= power_2_48() );
    _old_hdr.arp.tha := hdr.arp.tha;
    havoc hdr.arp.tpa;
    assume(0 <= hdr.arp.tpa && hdr.arp.tpa <= power_2_32() );
    _old_hdr.arp.tpa := hdr.arp.tpa;
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
    _old_hdr.ipv4.srcAddr := hdr.ipv4.srcAddr;
    havoc hdr.ipv4.dstAddr;
    _old_hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;
    hdr.icmp.valid := false;
    emit[hdr.icmp] := false;
    havoc hdr.icmp.icmpType;
    assume(0 <= hdr.icmp.icmpType && hdr.icmp.icmpType <= power_2_8() );
    _old_hdr.icmp.icmpType := hdr.icmp.icmpType;
    havoc hdr.icmp.icmpCode;
    assume(0 <= hdr.icmp.icmpCode && hdr.icmp.icmpCode <= power_2_8() );
    _old_hdr.icmp.icmpCode := hdr.icmp.icmpCode;
    havoc hdr.icmp.hdrChecksum;
    assume(0 <= hdr.icmp.hdrChecksum && hdr.icmp.hdrChecksum <= power_2_16() );
    _old_hdr.icmp.hdrChecksum := hdr.icmp.hdrChecksum;
    havoc hdr.icmp.identifier;
    assume(0 <= hdr.icmp.identifier && hdr.icmp.identifier <= power_2_16() );
    _old_hdr.icmp.identifier := hdr.icmp.identifier;
    havoc hdr.icmp.seqNumber;
    assume(0 <= hdr.icmp.seqNumber && hdr.icmp.seqNumber <= power_2_16() );
    _old_hdr.icmp.seqNumber := hdr.icmp.seqNumber;
    havoc hdr.icmp.payload;
    assume(0 <= hdr.icmp.payload && hdr.icmp.payload <= power_2_256() );
    _old_hdr.icmp.payload := hdr.icmp.payload;
    hdr.udp.valid := false;
    emit[hdr.udp] := false;
    havoc hdr.udp.srcPort;
    assume(0 <= hdr.udp.srcPort && hdr.udp.srcPort <= power_2_16() );
    _old_hdr.udp.srcPort := hdr.udp.srcPort;
    havoc hdr.udp.dstPort;
    assume(0 <= hdr.udp.dstPort && hdr.udp.dstPort <= power_2_16() );
    _old_hdr.udp.dstPort := hdr.udp.dstPort;
    havoc hdr.udp.length_;
    assume(0 <= hdr.udp.length_ && hdr.udp.length_ <= power_2_16() );
    _old_hdr.udp.length_ := hdr.udp.length_;
    havoc hdr.udp.checksum;
    assume(0 <= hdr.udp.checksum && hdr.udp.checksum <= power_2_16() );
    _old_hdr.udp.checksum := hdr.udp.checksum;
    hdr.paxos.valid := false;
    emit[hdr.paxos] := false;
    havoc hdr.paxos.msgtype;
    assume(0 <= hdr.paxos.msgtype && hdr.paxos.msgtype <= power_2_16() );
    _old_hdr.paxos.msgtype := hdr.paxos.msgtype;
    havoc hdr.paxos.inst;
    assume(0 <= hdr.paxos.inst && hdr.paxos.inst <= power_2_32() );
    _old_hdr.paxos.inst := hdr.paxos.inst;
    havoc hdr.paxos.rnd;
    assume(0 <= hdr.paxos.rnd && hdr.paxos.rnd <= power_2_16() );
    _old_hdr.paxos.rnd := hdr.paxos.rnd;
    havoc hdr.paxos.vrnd;
    assume(0 <= hdr.paxos.vrnd && hdr.paxos.vrnd <= power_2_16() );
    _old_hdr.paxos.vrnd := hdr.paxos.vrnd;
    havoc hdr.paxos.acptid;
    assume(0 <= hdr.paxos.acptid && hdr.paxos.acptid <= power_2_16() );
    _old_hdr.paxos.acptid := hdr.paxos.acptid;
    havoc hdr.paxos.paxoslen;
    assume(0 <= hdr.paxos.paxoslen && hdr.paxos.paxoslen <= power_2_32() );
    _old_hdr.paxos.paxoslen := hdr.paxos.paxoslen;
    havoc hdr.paxos.paxosval;
    assume(0 <= hdr.paxos.paxosval && hdr.paxos.paxosval <= power_2_256() );
    _old_hdr.paxos.paxosval := hdr.paxos.paxosval;
}

procedure icmp_tbl_0.action_run.limit();
    ensures(icmp_tbl_0.action_run==icmp_tbl_0.action.handle_icmp_request || icmp_tbl_0.action_run==icmp_tbl_0.action.handle_icmp_reply);
	modifies icmp_tbl_0.action_run;

// Table icmp_tbl_0
procedure {:inline 1} icmp_tbl_0.apply()
	modifies hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.icmp.hdrChecksum, hdr.icmp.icmpType, hdr.ipv4.dstAddr, hdr.ipv4.srcAddr, ipdst_0;
{
    hdr.icmp.icmpType := hdr.icmp.icmpType;

    call icmp_tbl_0.apply_table_entry();

    action_handle_icmp_request:
    if(icmp_tbl_0.action_run == icmp_tbl_0.action.handle_icmp_request){
        call handle_icmp_request();
    }

    action_handle_icmp_reply:
    if(icmp_tbl_0.action_run == icmp_tbl_0.action.handle_icmp_reply){
        call handle_icmp_reply();
    }
}

// Table Entry icmp_tbl_0.apply_table_entry
procedure icmp_tbl_0.apply_table_entry();

// Table Exit icmp_tbl_0.apply_table_exit
procedure icmp_tbl_0.apply_table_exit();

// Control ingress
procedure {:inline 1} ingress()
	modifies drop, forward, hdr.arp.op, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.ethernet.dstAddr, hdr.ethernet.srcAddr, hdr.icmp.hdrChecksum, hdr.icmp.icmpType, hdr.ipv4.dstAddr, hdr.ipv4.srcAddr, hdr.paxos.acptid, hdr.paxos.msgtype, hdr.paxos.paxosval, hdr.paxos.vrnd, ipdst_0, meta.paxos_metadata.round, registerRound_0, registerVRound_0, registerValue_0, standard_metadata.egress_spec;
{
    if(hdr.arp.valid){
        call arp_tbl_0.apply();
    }
    else{
        if(hdr.ipv4.valid){
            if(hdr.paxos.valid){
                call read_round();
                if(bsge.bv16(hdr.paxos.rnd, meta.paxos_metadata.round)){
                    call acceptor_tbl_0.apply();
                    call transport_tbl_0.apply();
                }
            }
            else{
                if(hdr.icmp.valid){
                    call icmp_tbl_0.apply();
                }
            }
        }
    }
}
function learner_address_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} learner_address_0.write(index:int, value:int)
	modifies learner_address_0;
{
    learner_address_0[index] := value;
}
function learner_mac_address_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} learner_mac_address_0.write(index:int, value:int)
	modifies learner_mac_address_0;
{
    learner_mac_address_0[index] := value;
}
procedure {:inline 1} main()
	modifies _old_hdr.arp.hln, _old_hdr.arp.hrd, _old_hdr.arp.op, _old_hdr.arp.pln, _old_hdr.arp.pro, _old_hdr.arp.sha, _old_hdr.arp.spa, _old_hdr.arp.tha, _old_hdr.arp.tpa, _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.hdrChecksum, _old_hdr.icmp.icmpCode, _old_hdr.icmp.icmpType, _old_hdr.icmp.identifier, _old_hdr.icmp.payload, _old_hdr.icmp.seqNumber, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.paxos.acptid, _old_hdr.paxos.inst, _old_hdr.paxos.msgtype, _old_hdr.paxos.paxoslen, _old_hdr.paxos.paxosval, _old_hdr.paxos.rnd, _old_hdr.paxos.vrnd, _old_hdr.udp.checksum, _old_hdr.udp.dstPort, _old_hdr.udp.length_, _old_hdr.udp.srcPort, drop, emit, forward, hdr.arp.hln, hdr.arp.hrd, hdr.arp.op, hdr.arp.pln, hdr.arp.pro, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.arp.valid, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.hdrChecksum, hdr.icmp.icmpCode, hdr.icmp.icmpType, hdr.icmp.identifier, hdr.icmp.payload, hdr.icmp.seqNumber, hdr.icmp.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.paxos.acptid, hdr.paxos.inst, hdr.paxos.msgtype, hdr.paxos.paxoslen, hdr.paxos.paxosval, hdr.paxos.rnd, hdr.paxos.valid, hdr.paxos.vrnd, hdr.udp.checksum, hdr.udp.dstPort, hdr.udp.length_, hdr.udp.srcPort, hdr.udp.valid, ipdst_0, meta.paxos_metadata.round, registerRound_0, registerVRound_0, registerValue_0, standard_metadata.egress_spec;
{
    call havocProcedure();
    call clear_drop();
    call clear_forward();
    call _parser_TopParser();
    call verifyChecksum();
    call ingress();
    call egress();
    call computeChecksum();
}
procedure mainProcedure()
	modifies _old_hdr.arp.hln, _old_hdr.arp.hrd, _old_hdr.arp.op, _old_hdr.arp.pln, _old_hdr.arp.pro, _old_hdr.arp.sha, _old_hdr.arp.spa, _old_hdr.arp.tha, _old_hdr.arp.tpa, _old_hdr.ethernet.dstAddr, _old_hdr.ethernet.etherType, _old_hdr.ethernet.srcAddr, _old_hdr.icmp.hdrChecksum, _old_hdr.icmp.icmpCode, _old_hdr.icmp.icmpType, _old_hdr.icmp.identifier, _old_hdr.icmp.payload, _old_hdr.icmp.seqNumber, _old_hdr.ipv4.diffserv, _old_hdr.ipv4.dstAddr, _old_hdr.ipv4.flags, _old_hdr.ipv4.fragOffset, _old_hdr.ipv4.hdrChecksum, _old_hdr.ipv4.identification, _old_hdr.ipv4.ihl, _old_hdr.ipv4.protocol, _old_hdr.ipv4.srcAddr, _old_hdr.ipv4.totalLen, _old_hdr.ipv4.ttl, _old_hdr.ipv4.version, _old_hdr.paxos.acptid, _old_hdr.paxos.inst, _old_hdr.paxos.msgtype, _old_hdr.paxos.paxoslen, _old_hdr.paxos.paxosval, _old_hdr.paxos.rnd, _old_hdr.paxos.vrnd, _old_hdr.udp.checksum, _old_hdr.udp.dstPort, _old_hdr.udp.length_, _old_hdr.udp.srcPort, acceptor_tbl_0.action_run, arp_tbl_0.action_run, drop, emit, forward, hdr.arp.hln, hdr.arp.hrd, hdr.arp.op, hdr.arp.pln, hdr.arp.pro, hdr.arp.sha, hdr.arp.spa, hdr.arp.tha, hdr.arp.tpa, hdr.arp.valid, hdr.ethernet.dstAddr, hdr.ethernet.etherType, hdr.ethernet.srcAddr, hdr.ethernet.valid, hdr.icmp.hdrChecksum, hdr.icmp.icmpCode, hdr.icmp.icmpType, hdr.icmp.identifier, hdr.icmp.payload, hdr.icmp.seqNumber, hdr.icmp.valid, hdr.ipv4.diffserv, hdr.ipv4.dstAddr, hdr.ipv4.flags, hdr.ipv4.fragOffset, hdr.ipv4.hdrChecksum, hdr.ipv4.identification, hdr.ipv4.ihl, hdr.ipv4.protocol, hdr.ipv4.srcAddr, hdr.ipv4.totalLen, hdr.ipv4.ttl, hdr.ipv4.valid, hdr.ipv4.version, hdr.paxos.acptid, hdr.paxos.inst, hdr.paxos.msgtype, hdr.paxos.paxoslen, hdr.paxos.paxosval, hdr.paxos.rnd, hdr.paxos.valid, hdr.paxos.vrnd, hdr.udp.checksum, hdr.udp.dstPort, hdr.udp.length_, hdr.udp.srcPort, hdr.udp.valid, icmp_tbl_0.action_run, ipdst_0, meta.paxos_metadata.round, place_holder_table_0.action_run, registerRound_0, registerVRound_0, registerValue_0, standard_metadata.egress_spec, transport_tbl_0.action_run;
{
    call place_holder_table_0.action_run.limit();
    call icmp_tbl_0.action_run.limit();
    call arp_tbl_0.action_run.limit();
    call transport_tbl_0.action_run.limit();
    call acceptor_tbl_0.action_run.limit();
    call clear_forward();
    call clear_drop();
    while(true){
        call main();
    }
}
procedure mark_to_drop();
    ensures drop==true;
	modifies drop;
function my_ip_address_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} my_ip_address_0.write(index:int, value:int)
	modifies my_ip_address_0;
{
    my_ip_address_0[index] := value;
}
function my_mac_address_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} my_mac_address_0.write(index:int, value:int)
	modifies my_mac_address_0;
{
    my_mac_address_0[index] := value;
}

//Parser State parse_arp
procedure {:inline 1} parse_arp()
	modifies hdr.arp.valid;
{
    hdr.arp.valid := true;
    call accept();
}

//Parser State parse_icmp
procedure {:inline 1} parse_icmp()
	modifies hdr.icmp.valid;
{
    hdr.icmp.valid := true;
    call accept();
}

//Parser State parse_ipv4
procedure {:inline 1} parse_ipv4()
	modifies hdr.icmp.valid, hdr.ipv4.valid, hdr.paxos.valid, hdr.udp.valid;
{
    hdr.ipv4.valid := true;
    if(hdr.ipv4.protocol == 1){
        call parse_icmp();
    }
    else if(hdr.ipv4.protocol == 17){
        call parse_udp();
    }
}

//Parser State parse_paxos
procedure {:inline 1} parse_paxos()
	modifies hdr.paxos.valid;
{
    hdr.paxos.valid := true;
    call accept();
}

//Parser State parse_udp
procedure {:inline 1} parse_udp()
	modifies hdr.paxos.valid, hdr.udp.valid;
{
    hdr.udp.valid := true;
    if(hdr.udp.dstPort == 34952){
        call parse_paxos();
    }
}

procedure place_holder_table_0.action_run.limit();
	modifies place_holder_table_0.action_run;

// Table place_holder_table_0
procedure {:inline 1} place_holder_table_0.apply()
{

    call place_holder_table_0.apply_table_entry();
}

// Table Entry place_holder_table_0.apply_table_entry
procedure place_holder_table_0.apply_table_entry();

// Table Exit place_holder_table_0.apply_table_exit
procedure place_holder_table_0.apply_table_exit();

// Action read_round
procedure {:inline 1} read_round()
	modifies meta.paxos_metadata.round;
{
    // read
    meta.paxos_metadata.round := registerRound_0.read(registerRound_0, hdr.paxos.inst);
}
function registerAcceptorID_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} registerAcceptorID_0.write(index:int, value:int)
	modifies registerAcceptorID_0;
{
    registerAcceptorID_0[index] := value;
}
function registerRound_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} registerRound_0.write(index:int, value:int)
	modifies registerRound_0;
{
    registerRound_0[index] := value;
}
function registerVRound_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} registerVRound_0.write(index:int, value:int)
	modifies registerVRound_0;
{
    registerVRound_0[index] := value;
}
function registerValue_0.read(reg:[int]int, index:int)returns (int) {reg[index]}
procedure {:inline 1} registerValue_0.write(index:int, value:int)
	modifies registerValue_0;
{
    registerValue_0[index] := value;
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
	modifies hdr.arp.valid, hdr.ethernet.valid, hdr.icmp.valid, hdr.ipv4.valid, hdr.paxos.valid, hdr.udp.valid;
{
    hdr.ethernet.valid := true;
    if(hdr.ethernet.etherType == 2054){
        call parse_arp();
    }
    else if(hdr.ethernet.etherType == 2048){
        call parse_ipv4();
    }
}

procedure transport_tbl_0.action_run.limit();
    ensures(transport_tbl_0.action_run==transport_tbl_0.action._drop_4);
	modifies transport_tbl_0.action_run;

// Table transport_tbl_0
procedure {:inline 1} transport_tbl_0.apply()
	modifies drop, hdr.ipv4.dstAddr;
{
    var forward.udp_dst:int;
    var forward.ip_dst:int;
    var forward.mac_dst:int;
    var forward.port:PortId;
    hdr.ipv4.dstAddr := hdr.ipv4.dstAddr;

    call transport_tbl_0.apply_table_entry();

    action__drop_4:
    if(transport_tbl_0.action_run == transport_tbl_0.action._drop_4){
        call _drop_4();
    }
}

// Table Entry transport_tbl_0.apply_table_entry
procedure transport_tbl_0.apply_table_entry();

// Table Exit transport_tbl_0.apply_table_exit
procedure transport_tbl_0.apply_table_exit();

// Control verifyChecksum
procedure {:inline 1} verifyChecksum()
{
}
