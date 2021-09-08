# The VPC itself (other resources will be created and attached)
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostname
  tags = var.vpc_tags
  # This is a hard coded value as Terraform does not allow variable for its lifecycle attributes
  lifecycle {
    create_before_destroy = true
  }
}
