module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.west
  }
}

# https://www.terraform.io/language/providers/configuration#alias-multiple-provider-instances
