module "s3bucket" {
  source = "./s3bucket"
  #   version = "1.0.0"

}

terraform {
  cloud {
    organization = "Joetech"

    workspaces {
      name = "Joetech"
    }
  }
}
output "module_random" {
  value = module.s3bucket.random_number

}

output "aws_kms_key" {
  value = module.s3bucket.aws_kms_key
}