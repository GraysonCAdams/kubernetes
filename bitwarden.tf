# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "helm_release" "bitwarden" {
  name       = "bitwarden"
  repository = "https://cdwv.github.io/bitwarden-k8s/"
  chart      = "bitwarden-k8s"
  version    = "0.1.5"
  namespace  = "bitwarden"
  depends_on = [kubernetes_namespace.bitwarden]
  values = [
    templatefile("${path.module}/bitwarden.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        metallb_pool_name: var.metallb_pool_name,
        bitwarden_metallb_ip: var.bitwarden_metallb_ip,
        bitwarden_db_url: var.bitwarden_db_url,
        bitwarden_fqdn : var.bitwarden_fqdn,
      }
    )
  ]
}
