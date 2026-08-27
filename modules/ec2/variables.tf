# variable "name" {}
# variable "instance_type" {}
# variable "allow_port" {}
# variable "allow_sg_cidr" {}
# variable "subnet_ids" {}
# variable "vpc_id" {}
# variable "env" {}
variable "bastion_nodes" {}
variable "vault_token" {}
variable "zone_id" {}

variable "name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "allow_port" {
  type = number
}

variable "allow_sg_cidr" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "env" {
  type = string
}