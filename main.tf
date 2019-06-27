resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remote-state-${var.environment}"
  acl    = "authenticated-read"

  # Never want to delete your state bucket
  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  tags = {
    Name        = "${var.prefix}-remote-state-${var.environment}"
    Environment = var.environment
  }
}

