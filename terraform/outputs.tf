output "bucket_name" {
  value = aws_s3_bucket.intro_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.intro_bucket.arn
}

output "bucket_region" {
  # Two ways:
  # value = var.aws_region
  value = aws_s3_bucket.intro_bucket.region
}