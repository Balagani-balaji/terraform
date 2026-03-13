resource "aws_route53_record" "WWW" {
for_each  = aws_instance.example
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" # mongdb.balaganibalaji.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
allow_overwrite = true
}
