module "dummy" {
  source         = "app.terraform.io/grinwis-com/dummy/akamai"
  version        = "0.0.2"
  entitlement_id = var.entitlement_id
}

resource "null_resource" "trigger_run" {
  provisioner "local-exec" {
    command = <<EOT
      curl -X "POST" "https://app.terraform.io/api/v2/runs" \
     -H 'Authorization: Bearer ${var.tfe_token}' \
     -H 'Content-Type: application/vnd.api+json' \
     -d $'{
  "data": {
    "attributes": {
      "replace-addrs": [],
      "is-destroy": false,
      "refresh": true,
      "refresh-only": false,
      "allow-config-generation": true,
      "debugging-mode": false
    },
    "relationships": {
      "workspace": {
        "data": {
          "type": "workspaces",
          "id": "ws-RK7tpcWfxAZkR5Ym"
        }
      }
    },
    "type": "runs"
  }
}'

    EOT
  }
}
