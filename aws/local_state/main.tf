terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

resource "aws_instance" "app_server" {
  ami           = "ami-096ea6a12ea24a797"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

