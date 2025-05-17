
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta"
    }
  }
}

provider "aws" {
  access_key = "TG"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
}
resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
}
