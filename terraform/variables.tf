variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "project" {
  type    = string
  default = "dropwatch"
}
variable "app_instance_type" {
  type    = string
  default = "t3.micro"
}
variable "monitor_instance_type" {
  type    = string
  default = "t3.small"
}
variable "public_key_path" {
  type    = string
  default = "~/.ssh/id_ed25519.pub"
}
variable "private_key_path" {
  type    = string
  default = "~/.ssh/id_ed25519"
}
variable "admin_cidr" {
  type        = string
  description = "Your IP in CIDR form, e.g. 203.0.113.7/32. Gets SSH and the Nagios UI."
}
