terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket = "terraform-remote-backend-s3-us-west-1"
    key    = "dev/terraform.tfstate"
    region = "us-west-1"
  }
}
provider "aws" {
  region = "us-west-1"
}