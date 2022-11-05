
# Elemets of the cloud such as virtual servers,
# networks, firewall rules are created as resources
# syntax is: resource RESOURCE_TYPE RESOURCE_NAME
# https://www.terraform.io/docs/configuration/resources.html

resource "google_compute_firewall" "frontend_rules" {
  name    = "frontend"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["80", "443", "9080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["productpage"]
}

resource "google_compute_firewall" "productpage_rules" {
  name    = "rule1"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["9080"]
  }

  source_tags = ["productpage"]
  target_tags = ["details"]
}

resource "google_compute_firewall" "productpage_rules2" {
  name    = "rule2"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["9080", "3000"]
  }

  source_tags = ["productpage"]
  target_tags = ["reviews"]
}


resource "google_compute_firewall" "reviews_rules" {
  name    = "stars"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["9080", "3000"]
  }

  source_tags = ["reviews"]
  target_tags = ["ratings"]
}