# use Terraform Cloud to store our state
terraform {
  cloud {
    organization = "grinwis-com"
    workspaces {
      name = "prop-20"
    }
  }
}

# let's create a dummy resource
resource "terraform_data" "replacement" {
  input = var.revision
}