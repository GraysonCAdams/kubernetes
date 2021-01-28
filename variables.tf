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

variable "metallb_ip_ranges" {
  type = list(string)
}

variable "metallb_lan_pool_name" {
  type = string
}

variable "metallb_lan_ip_ranges" {
  type = list(string)
}

variable "pihole_metallb_ip" {
  type = string
}

variable "pihole_password" {
  type        = string
  description = "Admin password for accessing Pi-Hole"
}

variable "unifi_metallb_ip" {
  type = string
}

variable "unifi_fqdn" {
  type = string
}

variable "wordpress_fqdns" {
  type = list(object({
    name = string
    path = string
  }))
}

variable "postgres_password" {
  type        = string
  description = "Admin password for accessing Postgres"
}

variable "postgres_fqdn" {
  type        = string
}

variable "postgres_metallb_ip" {
  type        = string
}

variable "docker_metallb_ip" {
  type        = string
}