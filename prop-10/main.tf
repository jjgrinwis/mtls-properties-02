# use Terraform Cloud to store our state
terraform {
  cloud {
    organization = "grinwis-com"
    workspaces {
      name = "prop-10"
    }
  }
}

# let's create a dummy resource
resource "terraform_data" "replacement" {
  input = var.revision
}
