terraform {
  backend "s3" {
    bucket = var.terraform_state_bucket
    key    = "path/to/your/terraform.tfstate"
    region = var.aws_region
  }
}
