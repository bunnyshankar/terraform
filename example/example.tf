terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "personal"
  region = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0cd31be676780afa7"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    when = destroy 
    command = "echo 'Deleting Provisioner'"
  }
}
