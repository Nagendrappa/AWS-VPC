resource "aws_instance" "dev-bastion" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.dev-public-subnet.id
  key_name = "myawskey"
  vpc_security_group_ids = [aws_security_group.dev-security-group.id]
  associate_public_ip_address = true
  tags = {
    Name = "dev-bastion"
  }   
}

#aws_security_group.dev-security-group
