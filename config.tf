terraform {
  backend "s3" {
    bucket = "tfstates-cloudfront"
    key    = "pokus_com/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "cloudflare" {
    version = "~> 2.0"
}
