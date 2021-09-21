resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_awx-002E-theorynomi-002E-com-002E-_A_" {
  name    = "awx.theorynomi.com"
  records = ["13.214.17.179"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_dashboard-002E-theorynomi-002E-com-002E-_A_" {
  name    = "dashboard.theorynomi.com"
  records = ["54.151.177.124"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_netbox-002E-theorynomi-002E-com-002E-_A_" {
  name    = "netbox.theorynomi.com"
  records = ["52.77.238.239"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_test-002E-theorynomi-002E-com-002E-_A_" {
  name    = "test.theorynomi.com"
  records = ["18.138.250.134"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com-002E-_NS_" {
  name    = "theorynomi.com"
  records = ["ns-364.awsdns-45.com.", "ns-1156.awsdns-16.org.", "ns-1807.awsdns-33.co.uk.", "ns-840.awsdns-41.net."]
  ttl     = "172800"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com-002E-_SOA_" {
  name    = "theorynomi.com"
  records = ["ns-364.awsdns-45.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z018830435ZHS3HMYDX8T_terraform-002E-theorynomi-002E-com-002E-_A_" {
  name    = "terraform.theorynomi.com"
  records = ["113.61.54.5"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z018830435ZHS3HMYDX8T_theorynomi-002E-com.zone_id}"
}
