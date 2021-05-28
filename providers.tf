terraform {
    backend "s3" {
        key    = "terraform.tfstate"
        encrypt = "true"
        region  = "ap-southeast-2"
        bucket = "terraform-state/synthetics"
        dynamodb_table = "terraform-lock"
    }
}

provider "aws" {
    region = "ap-southeast-2"
    profile = var.aws_profile
}