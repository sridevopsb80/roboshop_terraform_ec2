
variable "env" {
description = "Deployment environment"
type        = string
}

variable "build_server" {
description = "CIDR blocks allowed for build/Terraform server access."
type        = list(string)
}

variable "zone_id" {
description = "Route 53 hosted zone ID."
type        = string
}

variable "vpc" {
description = "VPC and subnet configuration for the environment."

type = object({
cidr               = string
public_subnets     = list(string)
web_subnets        = list(string)
app_subnets        = list(string)
db_subnets         = list(string)
availability_zones = list(string)

default_vpc_id   = string
default_vpc_rt   = string
default_vpc_cidr = string


})
}

variable "apps" {
description = "Application server configuration."

type = map(object({
subnet_ref       = string
instance_type    = string
allow_port       = number
allow_sg_cidr    = list(string)
allow_lb_sg_cidr = list(string)

capacity = object({
  desired = number
  max     = number
  min     = number
})

lb_ref           = string
lb_rule_priority = number

}))
}

variable "vault_token" {}

# # variable "vpc" {}
# # variable "env" {}
# variable "apps" {}
# # variable "build_server" {}
# # variable "db" {}
# # variable "zone_id" {}
# variable "load_balancers" {}

variable "db" {
  description = "Database server configuration"
  type = map(object({
    subnet_ref    = string
    instance_type = string
    allow_port    = number
    allow_sg_cidr = list(string)
  }))
}

variable "load_balancers" {
description = "Application Load Balancer configuration."

type = map(object({
internal           = bool
load_balancer_type = string
allow_lb_sg_cidr   = list(string)
subnet_ref         = string
acm_https_arn = string
listener_port = string
listener_protocol = string
ssl_policy        = string
}))
}