terraform {
  backend "s3" {
    bucket         = "assignment-terraform-me"
    key            = "storage/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "bq-assignment"
  }
}