terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }
}

#AWS provider
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secrete_key
}


resource "aws_instance" "my_ec2" {
  count         = terraform.workspace == "prod" ? 2 : 1
  instance_type = var.instance_type
  ami           = var.ami_id
  key_name      = var.key_pair
  #subnet_id     = var.script_subnet
 

  tags = {
    Name = "${terraform.workspace}-instance"
  }
}

resource "aws_s3_bucket" "my_workspace_bucket" {
  bucket = "${terraform.workspace}-workspace-bucket"
}

