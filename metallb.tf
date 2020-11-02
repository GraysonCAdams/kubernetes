# https://github.com/bitnami/charts/tree/master/bitnami/metallb

resource "helm_release" "metallb" {
  name       = "metallb"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metallb"
  version    = "0.1.28"
  namespace  = "metallb"
  depends_on = [kubernetes_namespace.metallb]
  values = [
    "${templatefile("${path.module}/metallb.yaml.tmpl",
      {
        nfs_storageclass: var.nfs_storageclass,
        metallb_pool_name: var.metallb_pool_name,
        metallb_start_ip: var.metallb_start_ip,
        metallb_end_ip: var.metallb_end_ip
      }
    )}"
  ]
}
