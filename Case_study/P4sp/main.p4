/* -*- P4_16 -*- */

#include <core.p4>
#include <v1model.p4>

// headers
#include "headers.p4"

// parser
#include "parser.p4"

// l2 forwarding
#include "controls/L2.p4"

// protect 
#include "controls/Protect.p4"

// topology
#include "controls/Topology-Discovery.p4"

// ingress control
#include "ingress.p4"

// egress control
#include "egress.p4"

// checksum control
#include "checksum.p4"

// deparser
#include "deparser.p4"

/*************************************************************************
***********************  S W I T C H  *******************************
*************************************************************************/

V1Switch(
	packetParser(),
	verifyChecksum(),
	ingress(),
	egress(),
	createChecksum(),
	deparser()
	) main;