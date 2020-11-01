# https://github.com/helm/charts/tree/master/stable/nfs-client-provisioner

resource "helm_release" "nfs_client_provisioner" {
  name       = "nfs-client-provisioner"
  repository = "https://charts.helm.sh/stable"
  chart      = "nfs-client-provisioner"
  version    = "1.2.9"
  namespace  = "provisioners"
  values = [
    "${templatefile("${path.module}/nfs-client-provisioner.yaml.tmpl",
      {
        nfs_server_ip: var.nfs_server_ip,
        nfs_mount_path: var.nfs_mount_path,
        nfs_storageclass: var.nfs_storageclass
      }
    )}"
  ]
}
