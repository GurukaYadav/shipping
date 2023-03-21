module "immutable-app-ami" {
  source = "github.com/GurukaYadav/immutable-app-ami"
  COMPONENT = "shipping"
  APP_VERSION = var.APP_VERSION
}

variable "APP_VERSION" {}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-sfiles"
    key    = "ami/shipping/terraform.tfstate"
    region = "us-east-1"
  }
}
