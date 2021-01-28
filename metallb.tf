# https://github.com/bitnami/charts/tree/master/bitnami/metallb

resource "helm_release" "metallb" {
  name       = "metallb"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metallb"
  version    = "0.1.28"
  namespace  = "metallb"
  depends_on = [kubernetes_namespace.metallb]
  values = [
    templatefile("${path.module}/metallb.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        metallb_pool_name : var.metallb_pool_name,
        metallb_ip_ranges : var.metallb_ip_ranges,
        metallb_lan_pool_name : var.metallb_lan_pool_name,
        metallb_lan_ip_ranges : var.metallb_lan_ip_ranges
      }
    )
  ]
}
