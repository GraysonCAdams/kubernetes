# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "kubernetes_persistent_volume" "plex_config" {
  metadata {
    name      = "plex-config"
  }
  spec {
    capacity = {
      storage = "10Gi"
    }
    access_modes = ["ReadWriteOnce"]
    persistent_volume_source {
      host_path {
        path      = "/mnt/plex"
      }
    }
    node_affinity {
      required {
        node_selector_term {
          match_expressions {
            key      = "kubernetes.io/hostname"
            operator = "In"
            values   = ["10.0.0.20"]
          }
        }
      }
    }
  }
}

resource "kubernetes_persistent_volume_claim" "plex_config_claim" {
  metadata {
    name      = "plex-config-pvc"
    namespace = "plex"
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = "10Gi"
      }
    }
    volume_name  = kubernetes_persistent_volume.plex_config.metadata.0.name
  }
}

resource "helm_release" "plex" {
  name       = "plex"
  repository = "https://k8s-at-home.com/charts"
  chart      = "plex"
  version    = "2.3.0"
  namespace  = "plex"
  depends_on = [kubernetes_namespace.plex, kubernetes_persistent_volume_claim.plex_config_claim]
  values = [
    templatefile("${path.module}/plex.yaml.tmpl",
      {
        plex_claim_token: var.plex_claim_token,
        plex_config_pvc : kubernetes_persistent_volume_claim.plex_config_claim.metadata.0.name,
        nfs_storageclass : var.nfs_storageclass,
        metallb_lan_pool_name: var.metallb_pool_name,
        plex_metallb_ip: var.plex_metallb_ip,
        plex_fqdn : var.plex_fqdn,
        nfs_server_ip: var.nfs_server_ip,
        nas_server_ip: var.nas_server_ip,
        nas_family_path: var.nas_family_path
        nas_plex_path: var.nas_plex_path
      }
    )
  ]
}
