resource "aws_route_table_association" "dev-public-route-table-association" {
  subnet_id = aws_subnet.dev-public-subnet.id
  route_table_id = aws_route_table.dev-public-route-table.id
}