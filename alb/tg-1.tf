resource "aws_lb_target_group" "lab-tg-2" {
  name     = "lab-tg-2"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-0d93065b230957826"
 
}



