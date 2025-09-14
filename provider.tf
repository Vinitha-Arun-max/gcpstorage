terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" # Example: Pin to a major version
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
  credentials = file(var.credentials_file)

  features {}
}
