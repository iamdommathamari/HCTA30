resource "aws_instance" "web" {
  ami = "ami-0f214d1b3d031dc53" #amazon-linux-2
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  key_name = "mykey"

  tags = {
    name ="web-server"
  }
}