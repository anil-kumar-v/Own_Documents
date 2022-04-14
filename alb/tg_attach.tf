resource "aws_lb_target_group_attachment" "lab-tg-1" {
  target_group_arn = aws_lb_target_group.lab-tg-1.arn
  target_id        = aws_instance.lab-alb.id
  port             = 80 
}

resource "aws_lb_target_group_attachment" "lab-tg-2" {
  target_group_arn = aws_lb_target_group.lab-tg-2.arn
  target_id        = aws_instance.lab-alb-1.id
  port             = 80 
}
