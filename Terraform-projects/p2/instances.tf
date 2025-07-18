resource "aws_instance" "web" {
  ami = "ami-0f214d1b3d031dc53"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  security_groups = [aws_security_group.web_sg.id]
  key_name = "mykey"
  tags = {
    name = "web-instance"
  }
}

resource "aws_instance" "app" {
  ami = "ami-0f214d1b3d031dc53"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.app.id
  security_groups = [ aws_security_group.app_sg.id ]
  key_name = "mykey"
  tags = {
    name = "app-instance"
  }
}

resource "aws_instance" "db" {
  ami = "ami-0f214d1b3d031dc53"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.db.id
  security_groups = [ aws_security_group.db_sg.id ]
  key_name = "mykey"
  tags = {
    name = "db-instance"
  }
}

resource "aws_instance" "bastion" {
  ami = "ami-0f214d1b3d031dc53"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  key_name = "mykey"
  tags = {
    name = "bastion-host"
  }
}