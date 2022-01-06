By default, Terraform will clone and use the default branch (referenced by HEAD) in the selected repository. You can override this using the ref argument:

module "vpc" {
  source = "git::https://example.com/vpc.git?ref=v1.2.0"
}
The value of the ref argument can be any reference that would be accepted by the git checkout command, including branch and tag names.

https://www.terraform.io/docs/modules/sources.html#selecting-a-revision