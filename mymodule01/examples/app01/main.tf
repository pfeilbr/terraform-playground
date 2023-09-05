provider "aws" {
  region = "us-east-1"
}

resource "random_string" "bucket_name" {
    length  = 5
    upper   = false
    lower   = true
    special = false
}

module "mymodule01" {
  source = "../../"
  bucket_name = "bucket-${module.mymodule01.account_id}-${module.mymodule01.timestamp}-${random_string.bucket_name.result}"
}