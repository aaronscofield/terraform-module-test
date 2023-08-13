variable "bucket_name" {
  description = "The name of the S3 Bucket to create"
  default     = "aarons-tf-bucket"
}

variable "instance_name" {
  description = "the name of the ec2 instane to pass to the module"
  default = "aaron-ec2-instance"
}
