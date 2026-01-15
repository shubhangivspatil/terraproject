########## Launch EC2 Instance in Mumbai region and show EC2 public IP

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "linux" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  key_name      = "ram_aws"

  tags = {
    Name   = "Test server"
    source = "terraform"
  }
}

output "public_ip" {
  value = aws_instance.linux.public_ip
}
