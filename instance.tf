resource "aws_instance" "web-server" {
    ami = "${lookup(var.amis, var.aws_region)}"
    availability_zone = "ap-southeast-1a"
    instance_type = "t2.micro"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.web.id}"]
    subnet_id = "${var.subnet_id}"
    associate_public_ip_address = true
    source_dest_check = false
    user_data = "${file("install_wordpress.sh")}" 

    tags {
        Name = "Web Server"
    }
}
