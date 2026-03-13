resource "aws_route53_record" "WWW" {
 count    = 10
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" # mongdb.balaganibalaji.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]

}
