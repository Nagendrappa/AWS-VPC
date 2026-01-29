resource "aws_route_table_association" "dev-private-route-table-association" {
  subnet_id      = aws_subnet.dev-private-subnet.id
  route_table_id = aws_route_table.dev-private-route-table.id
}