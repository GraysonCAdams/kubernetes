# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "helm_release" "plex" {
  name       = "plex"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "wordpress"
  version    = "10.10.12"
  namespace  = "drew"
  depends_on = [kubernetes_namespace.drew]
  values = [
    templatefile("${path.module}/wordpress-drew.yaml.tmpl",
      {
        plex_claim_token: var.plex_claim_token,
        nfs_storageclass : var.nfs_storageclass,
        metallb_lan_pool_name: var.metallb_pool_name,
        plex_metallb_ip: var.plex_metallb_ip,
        plex_fqdn : var.plex_fqdn,
        nfs_server_ip: var.nfs_server_ip,
        nas_server_ip: var.nas_server_ip,
        nas_family_path: var.nas_family_path
      }
    )
  ]
}
