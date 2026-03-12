resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.v1.id
  tags = {
    Name = "main-igw"
  }
}

