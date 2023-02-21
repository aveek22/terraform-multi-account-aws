provider "aws" {
  region              = "eu-west-1"
  allowed_account_ids = ["890277245818"]
}

terraform {
  required_version = "1.1.9"

  backend "s3" {
    bucket  = "terraform-state-0220"
    key     = "iod/multi-module-setup.tfstate"
    region  = "eu-west-1"
    encrypt = true
  }

  required_providers {
    aws = {
      version = "4.26.0"
    }
  }

}
