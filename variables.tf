#Region in which resource is deployed
variable "aws_region" {
  type = string
  default = "us-east-1"
}


#The Workspace Name. Defaults to a Random String if not provided
variable "workspace_name" {
  type = string
  description = "The Workspace Name associated with this stack"

}
# Variables for VPC
variable "vpc_tags" {
  type = map(string)
  default = {
    Name = "Appmodz_Default_VPC"
  }
}
variable "vpc_cidr" {
  type = string
}

variable "enable_dns_support" {
  type = string
  default = true
}
variable "enable_dns_hostname" {
  type = string
  default = true
}

# Variables for Subnets
variable "subnet_cidr" {
  type = string
}
variable "subnet_az" {
  type = string
}

variable "subnet_tag" {
  type = map(string)
}

variable "subnet_cidr2" {
  type = string
}
variable "subnet_az2" {
  type = string
}

variable "subnet_tag2" {
  type = map(string)
}
