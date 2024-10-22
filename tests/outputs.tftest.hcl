
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
variables {
  aws_region  = "us-east-1"
  name        = "test-bucket"
  environment = "test-env"
}

run "bucket_id_output_validation" {
  assert {
    condition     = output.bucket_id != null
    error_message = "Bucket ID output should not be null"
  }
}

run "bucket_arn_output_validation" {
  assert {
    condition     = output.bucket_arn != null
    error_message = "Bucket ARN output should not be null"
  }
}