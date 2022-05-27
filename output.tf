output "bucket_name" {
  value = module.litestream_s3.bucket_name
}

output "iam_user_access_key_id" {
  value     = module.litestream_s3.iam_user_access_key_id
  sensitive = true
}

output "iam_user_secret_access_key" {
  value     = module.litestream_s3.iam_user_secret_access_key
  sensitive = true
}

output "upcloud_server_ip" {
  value = upcloud_server.main.network_interface.0.ip_address
}