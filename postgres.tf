# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "helm_release" "postgres" {
  name       = "postgres"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "postgresql"
  version    = "10.2.2"
  namespace  = "postgres"
  depends_on = [kubernetes_namespace.postgres]
  values = [
    templatefile("${path.module}/postgres.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        metallb_pool_name: var.metallb_pool_name,
        postgres_metallb_ip: var.postgres_metallb_ip,
        postgres_fqdn : var.postgres_fqdn,
        postgres_password: var.postgres_password
      }
    )
  ]
}
