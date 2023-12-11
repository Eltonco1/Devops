provider "aws" {
  region = var.my_region
}


resource "aws_instance" "techxcellency" {
  ami           = var.my_ami
  instance_type = var.my_instance_type
  count         = var.instance_count
  #iam_instance_profile = "tawfiq"
  iam_instance_profile    = var.iam_instance_profile
  disable_api_termination = false
  disable_api_stop        = false
  key_name                = var.key
  vpc_security_group_ids  = [aws_security_group.techxcellency_role.id, aws_security_group.techxcellency_role_1.id]
  #user_data = filebase64("${path.module}/template/userdata.sh")

  user_data = <<EOF
#!/bin/bash
sudo useradd ema -m -d /home/ema
sudo useradd tawfiq -m -d /home/tawfiq
sudo useradd tubi -m -d /home/tubi
sudo touch /home/ema/file
sudo touch /home/tubi/file
sudo touch /home/tawfiq/file
sudo yum update -y 
sudo yum install httpd -y 
sudo systemctl start httpd 
sudo systemctl enable httpd 

        EOF

  tags = {
    #Name = "techxcellency-linux"
    Name        = "techxcellency-linux-${count.index + 1}",
    Environment = var.environment
  }

}

output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.techxcellency[0].public_ip
}







