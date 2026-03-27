provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "prod-tfstate-region2" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock-region2"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}