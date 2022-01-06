The terraform taint command manually marks a Terraform-managed resource as tainted, forcing it to be destroyed and recreated on the next apply. This command will not modify infrastructure, but does modify the state file in order to mark a resource as tainted. Once a resource is marked as tainted, the next plan will show that the resource will be destroyed and recreated and the next apply will implement this change.

You could also use terraform destroy -target <virtual machine> and destroy only the virtual machine and then run a terraform apply again.

https://www.terraform.io/docs/commands/taint.html