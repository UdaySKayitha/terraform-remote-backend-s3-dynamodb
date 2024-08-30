resource "aws_dynamodb_table" "dynamodb" {
  name         = var.dynamo_tb_name # Replace with your desired table name
  billing_mode = "PAY_PER_REQUEST"  # Use on-demand billing to avoid specifying capacity units
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "${var.organisation}-${var.application}-${var.environment}-dynamodb_table"
  }
}
