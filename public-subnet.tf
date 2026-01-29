resource "aws_subnet" "dev-public-subnet" {
  vpc_id = aws_vpc.dev-vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "dev-public-subnet"
  }
}