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

variable "pihole_metallb_ip" {
  type = string
}

variable "pihole_password" {
  type        = string
  description = "Admin password for accessing Pi-Hole"
}

variable "wordpress_fqdns" {
  type = list(object({
    name = string
    path = string
  }))
}

variable "mysql_password" {
  type        = string
  description = "Admin password for accessing MySQL"
}

variable "postgres_password" {
  type        = string
  description = "Admin password for accessing Postgres"
}

variable "postgres_fqdn" {
  type = string
}

variable "postgres_metallb_ip" {
  type = string
}

variable "mysql_fqdn" {
  type = string
}

variable "mysql_metallb_ip" {
  type = string
}

variable "docker_metallb_ip" {
  type = string
}

variable "privatebin_fqdn" {
  type = string
}

variable "rancher_fqdn" {
  type = string
}

variable "guacamole_fqdn" {
  type = string
}

variable "rancher_ip" {
  type = string
}

variable "reverse_proxy_ip" {
  type = string
}

variable "local_dns_entries" {
  type = list(object({
    host = string
    ip   = string
  }))
}

variable "nas_family_path" {
  type = string
}

variable "nas_server_ip" {
  type = string
}

variable "plex_metallb_ip" {
  type = string
}

variable "plex_fqdn" {
  type = string
}

variable "plex_claim_token" {
  type = string
}

variable "photoprism_fqdn" {
  type = string
}

variable "photoprism_db_user" {
  type = string
}

variable "photoprism_db_pass" {
  type = string
}

variable "photoprism_db_name" {
  type = string
}

variable "oauth_metallb_ip" {
  type = string
}

variable "photos_email_whitelist" {

}

variable "google_photos_client_id" {
  
}

variable "google_photos_client_secret" {
  
}