resource "aws_nat_gateway" "dev-nat-gw" {
  allocation_id = aws_eip.dev-eip.id
  subnet_id     = aws_subnet.dev-public-subnet.id

  tags = {
    Name = "dev-nat-gw"
  }  
}

