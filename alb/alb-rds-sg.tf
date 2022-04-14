resource "aws_security_group" "lab-alb-rds-sg" {
  name        = "lab-alb-rds-sg"
  description = "Allow traffic from lab-alb-sg"
  vpc_id      = "vpc-0d93065b230957826"
  

  ingress {
    description = "It allows only admins"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [aws_security_group.lab-alb-ec2-sg.id,aws_security_group.lab-alb-apache-sg.id]
  }

 

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "lab-alb-rds-sg"
  }
}