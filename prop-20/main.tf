# use Terraform Cloud to store our state
terraform {
  cloud {
    organization = "grinwis-com"
    workspaces {
      name = "prop-20"
    }
  }
}
