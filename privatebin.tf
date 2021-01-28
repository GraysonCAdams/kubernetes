# https://github.com/helm/charts/tree/master/stable/chartmuseum

resource "helm_release" "privatebin" {
  name       = "privatebin"
  repository = "https://privatebin.github.io/helm-chart"
  chart      = "privatebin"
  version    = "0.6.3"
  namespace  = "privatebin"
  depends_on = [kubernetes_namespace.privatebin]
  values = [
    templatefile("${path.module}/privatebin.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        privatebin_fqdn : var.privatebin_fqdn
      }
    )
  ]
}
