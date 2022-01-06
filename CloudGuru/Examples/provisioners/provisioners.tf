resource "null_resource" "dummy_resource" {
  provisioner "local-exec" {
    command = "echo '0' > status.txt"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo '1' > status.txt"
  }
}

# null_resource.dummy_resource: Creating...
# null_resource.dummy_resource: Provisioning with 'local-exec'...
# null_resource.dummy_resource (local-exec): Executing: ["/bin/sh" "-c" "echo '0' > status.txt"]
# null_resource.dummy_resource: Creation complete after 0s [id=8709686704173995624]
# 
# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.