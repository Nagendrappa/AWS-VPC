resource "aws_route_table" "dev-private-route-table" {
  vpc_id = aws_vpc.dev-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.dev-nat-gw.id
  }
  tags = {
    Name = "dev-private-route-table"
  }
}

# aws_route_table.dev-private-route-table
# aws_nat_gateway.dev-nat-gw