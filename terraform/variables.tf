variable "aws_region" {
    description = "AWS region for the project"
    type = string
    default = "ap-southeast-2"
}

variable "bucket_prefix" {
    description = "Prefix for the S3 bucket name"
    type = string
    default = "terraform-intro-bucket"
}