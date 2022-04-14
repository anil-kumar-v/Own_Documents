resource "aws_security_group" "lab-alb-sg" {
  name        = "lab-alb-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0d93065b230957826"

  ingress {
    description = "It allows internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "lab-alb-sg"
  }
}