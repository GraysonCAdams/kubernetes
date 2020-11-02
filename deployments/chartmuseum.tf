# https://github.com/helm/charts/tree/master/stable/chartmuseum

resource "helm_release" "chartmuseum" {
  name       = "chartmuseum"
  repository = "https://charts.helm.sh/stable"
  chart      = "chartmuseum"
  version    = "2.14.0"
  namespace  = "chartmuseum"
  depends_on = [kubernetes_namespace.chartmuseum]
  values = [
    "${templatefile("${path.module}/chartmuseum.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        chartsmuseum_fqdn : var.chartsmuseum_fqdn
      }
    )}"
  ]
}
