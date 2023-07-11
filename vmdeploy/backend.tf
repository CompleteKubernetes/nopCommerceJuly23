terraform {
  backend "s3" {
    bucket = "fleacommerce"
    key    = "vmdeploy"
    region = "us-west-2"
  }
}
