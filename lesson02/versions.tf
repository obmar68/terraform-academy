
terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket         = "wize-demo-terraform-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-locks"
    encrypt        = true
  }
}
