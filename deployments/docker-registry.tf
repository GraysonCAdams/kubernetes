# https://github.com/helm/charts/tree/master/stable/docker-registry

resource "helm_release" "docker_registry" {
  name       = "docker-registry"
  repository = "https://charts.helm.sh/stable"
  chart      = "docker-registry"
  version    = "1.9.4"
  namespace  = "docker-registry"
  depends_on = [kubernetes_namespace.docker_registry]
  values = [
    "${templatefile("${path.module}/docker-registry.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        docker_registry_fqdn : var.docker_registry_fqdn
      }
    )}"
  ]
}
