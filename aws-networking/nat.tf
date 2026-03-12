resource "aws_eip" "nat-eip" {
  domain = "vpc"
  tags = {
    Name = "nat-eip"
  }
}





resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.pub-s1.id
  tags = {
    Name = "main-nat-gateway"
  }
  depends_on = [aws_internet_gateway.igw]
}

