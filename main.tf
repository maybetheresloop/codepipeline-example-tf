provider "aws" {}

module "cross_account_roles" {
  source = "./modules/cross-account-roles"
}




