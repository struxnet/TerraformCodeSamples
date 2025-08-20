provider "aws" {
    region = "us-west-1"
  
}

resource "aws_instance" "my_first_ec2" {
    ami = "ami-0945610b37068d87a"
    instance_type = "t3.micro"

    tags = {
      Name = "First Instance"
    }
  
}