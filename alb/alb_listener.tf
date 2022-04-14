resource "aws_lb_listener" "listen" {
  load_balancer_arn = aws_lb.lab-alb-tf.arn
  port              = "80"
  protocol          = "HTTP"
 

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lab-tg-1.arn
  }
}


resource "aws_lb_listener_rule" "listen-1" {
  listener_arn = aws_lb_listener.listen.arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lab-tg-1.arn
  }

  condition {
    path_pattern {
      values = ["/football/*"]
    }
  }

}

resource "aws_lb_listener_rule" "listen-2" {
  listener_arn = aws_lb_listener.listen.arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lab-tg-2.arn
  }

  condition {
    path_pattern {
      values = ["/cricket/*"]
    }
  }

}