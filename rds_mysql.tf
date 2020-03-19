resource "aws_db_instance" "rds_instance" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "wordpressdb"
  username             = "${var.db_user_name}"
  password             = "${var.db_password}"
  parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = ["${aws_security_group.db.id}"]
  skip_final_snapshot       = true
}
