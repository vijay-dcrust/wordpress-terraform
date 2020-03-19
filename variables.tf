variable "aws_access_key" {
    default = "default"
}
variable "aws_secret_key" {
    default = "default"
}
variable "aws_key_path" {
    default = "~/Desktop/terraform"
}
variable "aws_key_name" {
    default = "blogpost-re"
}

variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "ap-southeast-1"
}

variable "amis" {
    description = "AMIs by region"
    default = {
        ap-southeast-1 = "ami-09a4a9ce71ff3f20b"
    }
}
variable "main_vpc_id" {
      default= "vpc-d2afbfb5"
}
variable "subnet_id" {
      default= "subnet-7ef83c18"
}
variable "db_user_name" {
     default= "foo"
}
variable "db_password" {
   default="fooa1234"
}
variable "domain_name" {
   default= "example.com"
}
