provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

module "ec2-instance" {
  source        = "./modules/ec2-instance"
  instance_name = var.instance_name
}
