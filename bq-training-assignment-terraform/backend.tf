terraform {
  backend "s3" {
    bucket         = "bq-training-terraform-assignment-bq-kanak-51"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "bq-assignment"
  }
}

