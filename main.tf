terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.27.0"
    }
  }
}

provider "google" {
    project = var.project_id
    region = var.region
    zone = var.zone
}

backend "gcs" {
    bucket  = "tf-quicklab-0001af"
    prefix  = "terraform/state"
}

module instances {
    source = "./modules/instances"
    count = 2
}