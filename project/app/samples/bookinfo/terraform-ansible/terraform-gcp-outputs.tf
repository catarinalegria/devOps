# Terraform GCP
# To output variables, follow pattern:
# value = TYPE.NAME.ATTR

output "productpage" {
    value = join(" ", google_compute_instance.productpage.*.network_interface.0.access_config.0.nat_ip)
}

output "productpage_ssh" {
 value = google_compute_instance.productpage.self_link
}

output "reviews"  {
  value = join(" ", google_compute_instance.reviews.*.network_interface.0.access_config.0.nat_ip)
}


output "details" {
    value = join(" ", google_compute_instance.details.*.network_interface.0.access_config.0.nat_ip)
}

output "ratings" {
    value = join(" ", google_compute_instance.ratings.*.network_interface.0.access_config.0.nat_ip)
}
