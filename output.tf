# outputs.tf

output "s3_id" {
  description = "The ID of the S3"
  value       = aws_s3_bucket.s3.id
}

output "s3_domain_name" {
  description = "The domain name of the S3"
  value       = aws_s3_bucket.s3.bucket_domain_name
}

output "dynamo_table_name" {
  description = "The ID of the dynamo table"
  value       = aws_dynamodb_table.dynamodb.id
}