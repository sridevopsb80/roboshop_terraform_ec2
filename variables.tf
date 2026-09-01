variable "vpc" {}
variable "env" {}
variable "apps" {}
variable "build_server" {}
variable "vault_token" {}
# variable "db" {}
variable "zone_id" {}
variable "load_balancers" {}

variable "db" {
  type = map(object({
    subnet_ref    = string
    instance_type = string
    allow_port    = number
    allow_sg_cidr = list(string)
  }))
}
