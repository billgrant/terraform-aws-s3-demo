# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "outputs_validation" {
  assert {
    condition     = output.bucket_id != ""
    error_message = "bucket_id should not be empty"
  }

  assert {
    condition     = output.bucket_arn != ""
    error_message = "bucket_arn should not be empty"
  }
}

# Please note that these tests are generated and should be reviewed by the module author to ensure they are testing the correct conditions.