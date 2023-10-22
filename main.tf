terraform {
  backend "s3" {
    bucket = "detomfam-terraform-s3-state"
    key = "github-state/terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
