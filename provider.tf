provider "aws" {
  region  = "us-east-1"
  profile = "panda"
}

terraform {
  backend "s3" {
    bucket = "piotr-swiecik-panda-devops-core-14"
    key    = "infra/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.33"
    }
  }

  required_version = ">= 1.0.0"
}
