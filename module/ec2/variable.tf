variable "name" {
    description = "name of your instance"
}
varibale "specify" {
    default = true
    description = "If the specify is false then use the ubuntu ami"
}
variable "my_ami" {
    default = var.specify == false ? data.default_ami.ubuntu : var.my_ami
    #default = data.default_ami.ubuntu
    description = "specify my ami"
}

variable "my_instance_type" {
   default = var.specify == false ? t2.meduim : var.my_instance_type
}
variable "environment" {
  deafult = "dev"
}