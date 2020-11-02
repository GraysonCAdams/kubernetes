variable "nfs_server_ip" {
  type = string
}

variable "nfs_mount_path" {
  type = string
}

variable "nfs_storageclass" {
  type = string
}

variable "chartsmuseum_fqdn" {
  type = string
}

variable "docker_registry_fqdn" {
  type = string
}

variable "pihole_fqdn" {
  type = string
}

variable "metallb_pool_name" {
  type = string
}

variable "metallb_start_ip" {
  type = string
}

variable "metallb_end_ip" {
  type = string
}

variable "pihole_metallb_ip" {
  type = string
}

variable "pihole_password" {
  type        = string
  description = "Admin password for accessing Pi-Hole"
}
