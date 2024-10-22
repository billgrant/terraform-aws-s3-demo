variable "aws_region" {
  default     = "us-east-1"
  description = "AWS region to deploy resources."
}

variable "name" {
  description = "Name of the S3 bucket."
}

variable "environment" {
  description = "Environment to deploy resources."
  }