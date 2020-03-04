resource "cloudflare_zone" "pokus_com" {
  zone = "pokus.com"
}

# www.pokus.com  IN A 1.2.3.1 
resource "cloudflare_record" "www_pokus_com" {
  zone_id = cloudflare_zone.pokus_com.id
  name    = "www"
  type    = "A"
  value   = "1.2.3.1"
  ttl     = 3600
}

# cdn.pokus.com  IN A 3.2.4.2 
resource "cloudflare_record" "cdn_pokus_com" {
  zone_id = cloudflare_zone.pokus_com.id
  name    = "cdn"
  type    = "A"
  value   = "3.2.4.2"
  ttl     = 3600
}

# static.pokus.com CNAME A cdn 
resource "cloudflare_record" "static_pokus_com" {
  zone_id = cloudflare_zone.pokus_com.id
  name    = "static"
  type    = "CNAME"
  value   = "cdn.pokus.com"
  ttl     = 3600
}
