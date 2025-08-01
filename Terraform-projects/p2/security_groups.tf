resource "aws_security_group" "web_sg" {
  vpc_id = aws_vpc.main.id
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  tags = {
    name = "web-sg"
  }
}

resource "aws_security_group" "app_sg" {
  vpc_id = aws_vpc.main.id
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_groups = [aws_security_group.web_sg.id] 
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  tags = {
    name="app-sg"
  }
}

resource "aws_security_group" "db_sg" {
  vpc_id = aws_vpc.main.id
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = [ aws_security_group.app_sg.id ]
  }
  egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  tags = {
    name = "db-sg"
  }
}