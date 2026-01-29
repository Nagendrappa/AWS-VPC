resource "aws_vpc" "dev-vpc" {
  cidr_block = "192.168.0.0/16" 

  tags = {
    Name = "dev-vpc"
  }
}

#aws_vpc.dev-vpc