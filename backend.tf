terraform {
  backend "s3" {
    bucket = "terraform-s3-logs"
    key    = "terraform state/terraform.tfstate"
    region = "us-west-1"
  }
}