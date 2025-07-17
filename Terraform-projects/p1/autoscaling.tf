resource "aws_launch_template" "foobar" {
  name_prefix =  "web-lc"
  image_id = "ami-0f214d1b3d031dc53"
  instance_type = "t2.micro"
  key_name = "mykey"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "web" {
  min_size = 1
  max_size = 3
  desired_capacity = 2
  vpc_zone_identifier = [aws_subnet.public.id]
  tag{
    key = "name"
    value = "web-instance"
    propagate_at_launch = true
  }
  lifecycle {
    create_before_destroy = true
  }
 launch_template {
    id      = aws_launch_template.foobar.id
    version = aws_launch_template.foobar.latest_version
  }
}