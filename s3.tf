resource "aws_s3_bucket" "s3" {
  bucket = var.bucket # Replace with a unique bucket name

  versioning {
    enabled = var.enabled
  }

  tags = {
    Name = "${var.organisation}-${var.application}-${var.environment}-bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "s3_bucket_access" {
  bucket = aws_s3_bucket.s3.id

  block_public_acls       = var.s3_access
  block_public_policy     = var.s3_access
  ignore_public_acls      = var.s3_access
  restrict_public_buckets = var.s3_access
}
