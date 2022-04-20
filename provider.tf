terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-file-sudheer"
    key    = "terraform.tfstate"
    region = "ap-south-1"

    dynamodb_table = "terraform-dev-state-table"

  }
}
provider "aws" {

  region  = var.region
  profile = "default"
}


