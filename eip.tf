resource "aws_eip" "dev-eip" { 
   domain = "vpc"
   tags = {
     Name = "dev-eip"
   }
}