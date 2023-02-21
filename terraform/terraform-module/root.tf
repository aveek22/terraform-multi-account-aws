module "s3_main_bucket" {
    source = "./modules/main-bucket"
}

module "s3_dependent_bucket" {
    source = "./modules/dependent-bucket"
    depends_on = [
        module.s3_main_bucket
    ]
}