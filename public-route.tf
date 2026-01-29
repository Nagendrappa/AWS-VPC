resource "aws_route_table" "dev-public-route-table" {
  vpc_id = aws_vpc.dev-vpc.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-igw.id
  }
  tags = {
    Name = "dev-public-route-table"
  }
}