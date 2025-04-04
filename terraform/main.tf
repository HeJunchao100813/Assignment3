provider "google" {
  credentials = file("terraform-key.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "devops-vm" {
  name         = "secure-devops-vm"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt update
    sudo apt install -y docker.io docker-compose git
    git clone https://github.com/HeJunchao100813/Assignment3.git
    cd Assignment3/docker
    docker-compose up -d
  EOT
}

# output "vm_ip" {
#   value = google_compute_instance.devops-vm.network_interface[0].access_config[0].nat_ip
# }
