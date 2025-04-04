variable "project_id" {
  description = "digital-vim-442920-g"
  type        = string
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "image" {
  default = "ubuntu-2004-focal-v20240401"
}
