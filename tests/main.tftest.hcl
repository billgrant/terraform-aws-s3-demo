
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  aws_region  = "us-east-1"
  name        = "test-bucket"
  environment = "test-env"
}

run "bucket_creation" {
  assert {
    condition     = aws_s3_bucket.example.tags.Name == "test-bucket"
    error_message = "Bucket name is incorrect"
  }

  assert {
    condition     = aws_s3_bucket.example.tags.Environment == "test-env"
    error_message = "Environment tag is incorrect"
  }
}

run "bucket_id_validation" {
  assert {
    condition     = output.bucket_id != null
    error_message = "Bucket ID should not be null"
  }
}

run "bucket_arn_validation" {
  assert {
    condition     = output.bucket_arn != null
    error_message = "Bucket ARN should not be null"
  }
}