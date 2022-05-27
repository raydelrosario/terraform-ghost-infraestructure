#? Litestream
variable "litestream_bucket_name" {
  type = string
}
variable "litestream_iam_user_name" {
  type    = string
  default = "litestream"
}

#? Server
variable "upcloud_server_hostname" {
  type = string
}
variable "upcloud_server_ssh_public_key" {
  type = string
}
variable "upcloud_server_zone" {
  type    = string
  default = "us-nyc1"
}
variable "upcloud_server_plan" {
  type    = string
  default = "1xCPU-1GB"
}