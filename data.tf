# look up hosted zone id for sridevops.site

data "aws_route53_zone" "sridevops" {
  name = "sridevops.site"
}

data "aws_route53_records" "sridevops" {
  zone_id = data.aws_route53_zone.sridevops.id
}

# output "zone_id" {
#   value = data.aws_route53_records.sridevops.zone_id
# }

