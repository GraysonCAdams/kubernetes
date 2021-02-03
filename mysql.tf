# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "helm_release" "mysql" {
  name       = "mysql"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mysql"
  version    = "8.3.0"
  namespace  = "mysql"
  depends_on = [kubernetes_namespace.mysql]
  values = [
    templatefile("${path.module}/mysql.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        metallb_pool_name: var.metallb_pool_name,
        mysql_metallb_ip: var.mysql_metallb_ip,
        mysql_fqdn : var.mysql_fqdn,
        mysql_password: var.mysql_password
      }
    )
  ]
}
