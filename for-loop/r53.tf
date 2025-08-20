resource "aws_route53_record" "www" {
    for_each = aws_instance.Roboshop
    zone_id = var.zone_id
    name    = "${each.key}.${var.domain_name}" #mongodb.arunkumarnelluri.site
    type    = "A"
    ttl     = 1
    records = [each.value.private_ip]
    allow_overwrite = true

}