resource "helm_release" "oauth" {
  name       = "oauth"
  repository = "https://k8s-at-home.com/charts"
  chart      = "oauth2-proxy"
  version    = "4.3.0"
  namespace  = "photos"
  depends_on = [kubernetes_namespace.photos]
  values = [
    templatefile("${path.module}/oauth.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        photoprism_fqdn : var.photoprism_fqdn
        photos_email_whitelist : var.photos_email_whitelist
        google_photos_client_id : var.google_photos_client_id
        google_photos_client_secret : var.google_photos_client_secret
      }
    )
  ]
}
