resource "aws_subnet" "dev-private-subnet" {
  vpc_id = aws_vpc.dev-vpc.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "dev-private-subnet"
  }
}