provider "google" {
    project = var.project_id
    region = var.region
    zone = var.zone
}

/*
backend "gcs" {
    bucket  = "tf-quicklab-0001af"
    prefix  = "terraform/state"
}
*/

module instances {
    source = "./modules/instances"
}
/*
module storage {
    source = "./modules/storages"
}
*/
/*
module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.2.2"

    project_id   = var.project_id
    network_name = var.network_name
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-central1"
        }
    ]
}
*/
/*
resource "google_compute_firewall" "tf-firewall" {
 name    = "tf-firewall"
 network = module.vpc.network_self_link
 //network = "projects/${var.project_id}/global/networks/${var.network_name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_tags = ["http"]
  source_ranges = ["0.0.0.0/0"]
}
*/