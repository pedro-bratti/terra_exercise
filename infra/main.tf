# ---------------------------------------------------------------------------------------------------------------------
# Terraform
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "> 0.12"

  backend "s3" {
    bucket = "dino-terraformclass"
    key = "exercice"
    region = "us-east-1"
  }
}
# ---------------------------------------------------------------------------------------------------------------------
# Provider
# ---------------------------------------------------------------------------------------------------------------------
provider "aws" {
  profile = var.provider_profile
  region  = var.aws_region
}

# ---------------------------------------------------------------------------------------------------------------------
# Modules
# ---------------------------------------------------------------------------------------------------------------------
module bastion {
    source = "../modules/bastion"
    vpc_id = module.networking.vpc_id
    aws_key_pair = aws_key_pair.keypair.id
}

module networking {
    source = "../modules/networking"
    name_preffix = "pedro_bratti_test"
    availability_zones = var.az
}

module persistence {
  source = "../modules/persistence"
  vpc_id = module.networking.vpc_id
  sg_bastion = module.bastion.sg_id
}

# ---------------------------------------------------------------------------------------------------------------------
# Key Pair
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_key_pair" "keypair" {
  key_name   = var.key_name
  public_key = var.public_key
}