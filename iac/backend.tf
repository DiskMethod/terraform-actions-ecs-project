# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-76"
    key            = "terraform-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
