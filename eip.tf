resource "aws_eip" "web" {
    instance = "${aws_instance.web-server.id}"
    vpc = true
}
