output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "bucket_name" {
  value = "${aws_s3_bucket.bucket.id}"
}

output "timestamp" {
  value = "${local.timestamp}"
}