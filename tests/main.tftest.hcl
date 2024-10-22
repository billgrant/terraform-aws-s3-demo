# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  aws_region  = "us-east-1"
  name        = "test-bucket"
  environment = "test-env"
}

run "resource_validation" {
  assert {
    condition     = aws_s3_bucket.example.tags.Name == "test-bucket"
    error_message = "incorrect bucket name"
  }

  assert {
    condition     = aws_s3_bucket.example.tags.Environment == "test-env"
    error_message = "incorrect environment"
  }
}

run "variables_validation" {
  assert {
    condition     = var.aws_region == "us-east-1"
    error_message = "incorrect AWS region"
  }

  assert {
    condition     = var.name == "test-bucket"
    error_message = "incorrect bucket name"
  }

  assert {
    condition     = var.environment == "test-env"
    error_message = "incorrect environment"
  }
}