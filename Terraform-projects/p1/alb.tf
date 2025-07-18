resource "aws_lb" "app" {
  name = "terraform-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.web_sg.id]
  subnets = [aws_subnet.public.id,aws_subnet.private.id]
  tags = {
    name = "terraform-alb"
  }
}

#alb target groups
resource "aws_lb_target_group" "web_tg" {
  name = "web-target-group"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.main.id
}

#alb listener
resource "aws_lb_listener" "web_listener" {
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.web_tg.arn
  }
  load_balancer_arn = aws_lb.app.arn
  port = 80
  protocol = "HTTP"
}