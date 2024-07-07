resource "google_compute_network" "this" {
  project                 = var.project
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
  mtu                     = var.mtu
  description             = var.description
}

resource "google_compute_subnetwork" "this" {
  for_each      = var.subnets
  name          = "${var.name}-${each.key}"
  ip_cidr_range = each.value.ip_cidr_range
  network       = google_compute_network.this.id
}
