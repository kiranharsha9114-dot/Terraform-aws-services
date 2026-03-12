resource "aws_subnet" "pub-s1" {
  vpc_id = aws_vpc.v1.id
  tags = {
    Name = "pub-1"
  }
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private-s1" {
  vpc_id = aws_vpc.v1.id
  tags = {
    Name = "private-1"
  }
  cidr_block = "10.0.2.0/24"
}




