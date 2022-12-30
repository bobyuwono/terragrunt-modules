resource "google_storage_bucket" "default" {
  name = var.bucket_name
  location = var.bucket_location
}

variable "bucket_name" {
  description = "desired bucket name"
  type = string 
}

variable "bucket_location" {
  description = "desired bucket location"
  type = string
}

