The terraform import command is used to import existing resources into Terraform. This allows you to take resources that you’ve created by some other means and bring them under Terraform management.

Note that terraform import DOES NOT generate configuration, it only modifies state. You'll still need to write a configuration block for the resource for which it will be mapped using the terraform import command.

https://www.terraform.io/docs/commands/import.html