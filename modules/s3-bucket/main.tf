provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "bucket" {
    name = var.bucket_name
}