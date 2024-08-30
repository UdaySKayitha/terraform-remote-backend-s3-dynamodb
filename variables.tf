variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "enabled" {
  description = "S3 Versioning enablement"
  type        = string
  default     = "true"
}

variable "s3_access" {
  description = "S3 Public access"
  type        = string
  default     = "true"
}

variable "organisation" {
  description = "Your organisation"
  type        = string
  default     = "learningcircuit"
}

variable "application" {
  description = "your Application Name"
  type        = string
  default     = "application"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "stage"
}

variable "dynamo_tb_name" {
  description = "Dynamo Table Name"
  type        = string
  default     = "Terraform_Locking"
}

variable "bucket" {
  description = "S3 Bucket Name"
  type        = string
  default     = "S3"
}