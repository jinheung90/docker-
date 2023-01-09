
resource "aws_route53_zone" "api" {
  name = "jhc90.com"
}

resource "aws_elb" "springboot-elb" {
  listener {
    instance_port     = 8081
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  health_check {
    healthy_threshold   = 3
    interval            = 60
    target              = "http://localhost:80/actuator/health"
    timeout             = 30
    unhealthy_threshold = 3
  }
  cross_zone_load_balancing = true
}

resource "aws_route53_record" "record_api" {
  zone_id = aws_route53_zone.api.zone_id
  name    = "api.jhc90.com"
  type    = "A"
  ttl     = "30"
  records = aws_route53_zone.dev.name_servers
}

resource "aws_route53_record" "api" {
  zone_id = aws_route53_zone.api.
  name    = "example.com"
  type    = "A"

  alias {
    reg
  }
}