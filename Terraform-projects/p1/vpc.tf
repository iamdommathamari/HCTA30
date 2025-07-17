#define VPC
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name="terraform-vpc"
    }
}

#subnet configurations-public
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  tags = {
    name="public-subnet"
  }
}

#subnet configuration-private
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    tags = {
      name = "private-subnet"
    }
  
}

#internet gateway
resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.main.id
    tags = {
      name = "terraform-igw"
    }
}

#route-table
resource "aws_route_table" "public" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
    }
}

#route-table-assoication
resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "web_sg"
  }
}