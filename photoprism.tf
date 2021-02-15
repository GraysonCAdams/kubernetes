# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "kubernetes_persistent_volume" "family_media" {
  metadata {
    name      = "family-media"
  }
  spec {
    capacity = {
      storage = "1000Gi"
    }
    access_modes = ["ReadOnlyMany"]
    persistent_volume_source {
      nfs {
        server    = var.nas_server_ip
        path      = var.nas_family_path
        read_only = true
      }
    }
  }
}

resource "kubernetes_persistent_volume_claim" "family_media_claim" {
  metadata {
    name      = "family-media-pvc"
    namespace = "photos"
  }
  spec {
    access_modes = ["ReadOnlyMany"]
    resources {
      requests = {
        storage = "1000Gi"
      }
    }
    volume_name  = kubernetes_persistent_volume.family_media.metadata.0.name
  }
}

resource "helm_release" "photoprism" {
  name       = "photos"
  repository = "https://k8s-at-home.com/charts"
  chart      = "photoprism"
  version    = "2.4.0"
  namespace  = "photos"
  depends_on = [kubernetes_namespace.photos, kubernetes_persistent_volume_claim.family_media_claim]
  values = [
    templatefile("${path.module}/photoprism.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        family_media_pvc : kubernetes_persistent_volume_claim.family_media_claim.metadata.0.name,
        photoprism_fqdn : var.photoprism_fqdn
        db_user : var.photoprism_db_user
        db_pass : var.photoprism_db_pass
        db_name : var.photoprism_db_name
        db_host : "mysql.mysql:3306"
      }
    )
  ]
}
