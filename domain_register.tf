resource "aws_route53_zone" "main" {
    name= "${var.domain_name}"
}

resource "aws_route53_record" "A-record" {
   zone_id = "${aws_route53_zone.main.zone_id}"
   name = "www.${var.domain_name}"
   type = "A"
   ttl  = "300"
   
   records = [
     "${aws_instance.web-server.public_ip}"
  ]
}
