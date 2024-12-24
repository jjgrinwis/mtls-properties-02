module "dummy" {
  source         = "app.terraform.io/grinwis-com/dummy/akamai"
  version        = "0.0.1"
  entitlement_id = var.entitlement_id
}
