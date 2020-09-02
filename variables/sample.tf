terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "personal"
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    when = destroy 
    command = "echo 'Deleting Provisioner'"
  }
  provisioner "local-exec" {
    command = "echo 'Provisioining the instance1'"
  }
}
output "ami" {
  value = aws_instance.example.ami
}
output "public_ip" {
  value = aws_instance.example.public_ip
}
