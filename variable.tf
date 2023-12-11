variable "my_region" {
  description = "this is the region to deploy"
  default     = "us-east-2"
}
variable "my_instance_type" {
  description = "this is my instance type"
  default     = "t2.micro"
}
variable "my_ami" {
  default = "ami-06d4b7182ac3480fa"

}

variable "key" {
  default = "terraform"
}
variable "my_ftp_port" {
  default = 23
}

variable "my_port" {
  default = 22
}


variable "instance_count" {
  default = 2
}

variable "environment" {}
variable "my_bucket_name" {}
variable "my_sg_name1" {}
variable "my_sg_name2" {}
variable "iam_instance_profile"{}