provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = var.terraform_state_bucket
    key    = "path/to/your/terraform.tfstate"
    region = var.aws_region
  }
}

module "rds" {
  source = "./rds"
}

module "cloudwatch" {
  source = "./cloudwatch"
}

module "cloudtrail" {
  source = "./cloudtrail"
}

module "dms" {
  source = "./dms"
}
