remote_state {
  backend = "s3"
  config = {
    bucket = "terraform-state-051"
    
    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-1"
    encrypted     = "yes"
  }
}