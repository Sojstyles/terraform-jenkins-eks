terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket  = "mydevopsbackup"
    key     = "jenkins/terraform.tfstate"
    region  = "us-east-1"
    profile = "devopslink"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
