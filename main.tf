resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remote_state-${var.environment}"
  acl    = "authenticated-read"

  versioning {
    enabled = true
  }

  tags {
    Name        = "${var.prefix}-remote_state-${var.environment}"
    Environment = "${var.environment}"
  }
}
