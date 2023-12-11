provider "aws" {
    region = var.my_region
}

resource "aws_instance" "name" {
    name = var.my_name 
    region = var.my_region
    ami = var.my_ami
    instance_type =  var.instance_type
    
    tags = {
    Name = var.my_name-var.environment
  }

}
