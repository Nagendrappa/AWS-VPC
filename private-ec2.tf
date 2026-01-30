resource "aws_instance" "dev-private-ec2" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.dev-private-subnet.id
  key_name = "myawskey"
  vpc_security_group_ids = [aws_security_group.dev-security-group.id]
  associate_public_ip_address = false
  tags = {
    Name = "dev-private-ec2"
  }
}