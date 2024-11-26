terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
    backend "s3" {
    bucket = "squad-5"
    key    = "squad-5"
    region = "us-east-1"
    dynamodb_table = "squad-5"
  }
}


provider "aws" {
    region = "us-east-1"
  # Configuration options
}