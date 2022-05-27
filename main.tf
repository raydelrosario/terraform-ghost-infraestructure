module "litestream_s3" {
  source      = "raydelrosario/litestream-s3/aws"
  version     = "0.0.3"
  bucket_name = var.litestream_bucket_name
}

resource "upcloud_server" "main" {
  hostname = var.upcloud_server_hostname
  zone     = var.upcloud_server_zone
  plan     = var.upcloud_server_plan
  template {
    storage = "AlmaLinux 8"
    size    = 25
  }
  network_interface {
    type = "public"
  }
  login {
    user = "admin"
    keys = [
      var.upcloud_server_ssh_public_key,
    ]
  }
}