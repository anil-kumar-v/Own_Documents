resource "aws_lb" "lab-alb-tf" {
  name               = "lab-alb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lab-alb-sg.id]
  subnets            = ["subnet-06c10acda310a113c","subnet-0ef6e6d1957ba2231"]
  
  tags = {
   Name= "lab-alb-tf"
  }
}

