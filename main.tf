terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  cloud {
    organization = "your-organization-name"
    workspaces {
      name = "your-workspace-name"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  tags   = var.tags
}