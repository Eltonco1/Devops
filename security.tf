resource "aws_security_group" "techxcellency_role_1" {
  provider = aws
  name     = var.my_sg_name1



  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    description = "jenkins port"
    cidr_blocks = ["0.0.0.0/0"]
  }



  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    description = "DNS"
    cidr_blocks = ["0.0.0.0/0"]
  }
}