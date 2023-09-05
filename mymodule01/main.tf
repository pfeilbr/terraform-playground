provider "aws" {
  region = "us-east-1"
}

locals {
  timestamp = formatdate("YYYYMMDDhhmmss", timestamp())
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}