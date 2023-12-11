resource "aws_security_group" "techxcellency_role" {
  provider = aws
  name     = var.my_sg_name2

  #  ingress {
  #    from_port   = 0
  #    to_port     = 0
  #    protocol    = "-1"
  #    cidr_blocks = ["0.0.0.0/0"]
  #  }


  ingress {
    from_port   = var.my_port
    to_port     = var.my_port
    protocol    = "tcp"
    description = "ssh access"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.my_ftp_port
    to_port     = var.my_ftp_port
    protocol    = "tcp"
    description = "ftp access"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    description = "http access"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "https access"
    cidr_blocks = ["0.0.0.0/0"]
  }
}