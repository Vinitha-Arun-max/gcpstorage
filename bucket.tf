resource "google_storage_bucket" "default" {
  name     = "${var.project}-bucket"
  location = var.region

  versioning {
    enabled = true
  }

  force_destroy = false
}
