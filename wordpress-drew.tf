# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "helm_release" "wordpress_drew" {
  name       = "wordpress-drew"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "wordpress"
  version    = "10.10.12"
  namespace  = "drew"
  depends_on = [kubernetes_namespace.drew]
  values = [
    templatefile("${path.module}/wordpress-drew.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        mysql_metallb_ip : var.mysql_metallb_ip,
        wordpress_drew_fqdn : var.wordpress_drew_fqdn,
        wordpress_drew_username : var.wordpress_drew_username,
        wordpress_drew_password : var.wordpress_drew_password,
        wordpress_drew_db_name : var.wordpress_drew_db_name,
        wordpress_drew_db_username : var.wordpress_drew_db_username,
        wordpress_drew_db_password : var.wordpress_drew_db_password,
      }
    )
  ]
}
