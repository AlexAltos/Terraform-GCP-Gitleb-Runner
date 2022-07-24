provider "google" {
  #credentials = file("mygcp-creds.json")
  project     = var.project["id"]
  region      = var.region["name"]
}