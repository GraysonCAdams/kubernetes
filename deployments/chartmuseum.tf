# https://github.com/helm/charts/tree/master/stable/chartmuseum

resource "helm_release" "chartmuseum" {
  name       = "chartmuseum"
  repository = "https://charts.helm.sh/stable"
  chart      = "chartmuseum"
  version    = "2.14.0"
  namespace  = "chartmuseum"
  values = [
    "${templatefile("${path.module}/chartmuseum.yaml.tmpl",
      {
        nfs_server_ip: var.nfs_server_ip,
        nfs_mount_path: var.nfs_mount_path,
        nfs_storageclass: var.nfs_storageclass
      }
    )}"
  ]
}
