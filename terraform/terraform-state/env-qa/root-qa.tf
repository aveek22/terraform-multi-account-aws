module "s3_main_bucket" {
    source = "../modules/s3_bucket"
    env_name = "qa"
}