terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.26.0"
    }
  }
}

provider "aws" {
  alias   = "dev"
  profile = "dev"
  region  = "eu-west-1"
}

provider "aws" {
  alias   = "prod"
  profile = "prod"
  region  = "eu-west-1"
}
