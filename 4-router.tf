resource "google_compute_router" "router" {
  name    = "router"
  region  = var.region["name"]
  network = google_compute_network.main.id
}