terraform {
  required_version = ">= 1.0"
}

resource "null_resource" "devsecops_example" {
  provisioner "local-exec" {
    command = "echo DevSecOps Terraform stage executed successfully"
  }
}