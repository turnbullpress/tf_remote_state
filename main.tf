resource "aws_s3_bucket" "remote_state" {
  bucket = "remote_state-${var.environment}"
  acl    = "authenticated-read"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
