variable "cidr_block" {
  type = string
}
variable "vpc_tags" {
  default = {}
}
variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostname" {
  default = true
}

