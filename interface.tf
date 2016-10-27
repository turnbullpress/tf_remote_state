variable "region" {
  default     = "us-east-1"
  description = "The AWS region."
}

variable "prefix" {
  default     = "examplecom"
  description = "The name of our org, i.e. examplecom."
}

variable "environment" {
  default     = "development"
  description = "The name of our environment, i.e. development."
}

output "s3_bucket_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}
