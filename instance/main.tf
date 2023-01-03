resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.instance_machine_type
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "my label"
      }
    }
  }

  network_interface {
    network = "default"
  }
}

variable "instance_name" {
  description = "desired instance name"
  type = string 
}

variable "instance_machine_type" {
  description = "desired machine_type"
  type = string 
}

variable "instance_zone" {
  description = "desired instance zone location"
  type = string
}

