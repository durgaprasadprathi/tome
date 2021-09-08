variable "sg_cidr_block" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "tags" {
    type =  map(string)
    default = {}
}

variable "availability_zone" {
  type = string
}
