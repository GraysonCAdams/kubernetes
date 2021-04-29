resource "kubernetes_namespace" "chartmuseum" {
  metadata {
    annotations = {
      name                                        = "chartmuseum"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "chartmuseum"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "docker_registry" {
  metadata {
    annotations = {
      name                                        = "docker-registry"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "docker-registry"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "pihole" {
  metadata {
    annotations = {
      name                                        = "pihole"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "pihole"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "metallb" {
  metadata {
    annotations = {
      name                                        = "metallb"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "metallb"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "unifi" {
  metadata {
    annotations = {
      name                                        = "unifi"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "unifi"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "wordpress" {
  metadata {
    annotations = {
      name                                        = "wordpress"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "wordpress"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "postgres" {
  metadata {
    annotations = {
      name                                        = "postgres"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "postgres"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "provisioners" {
  metadata {
    annotations = {
      name                                        = "provisioners"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "provisioners"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "privatebin" {
  metadata {
    annotations = {
      name                                        = "privatebin"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "privatebin"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "mysql" {
  metadata {
    annotations = {
      name                                        = "mysql"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "mysql"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "plex" {
  metadata {
    annotations = {
      name                                        = "plex"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "plex"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "photos" {
  metadata {
    annotations = {
      name                                        = "photos"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "photos"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "bookstack_mc" {
  metadata {
    annotations = {
      name                                        = "bookstack-mc"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "bookstack-mc"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "bitwarden" {
  metadata {
    annotations = {
      name                                        = "bitwarden"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "bitwarden"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}

resource "kubernetes_namespace" "drew" {
  metadata {
    annotations = {
      name                                        = "drew"
      "lifecycle.cattle.io/create.namespace-auth" = "placeholder"
      "field.cattle.io/projectId"                 = "placeholder"
      "cattle.io/status"                          = "placeholder"
    }
    labels = {
      "field.cattle.io/projectId" = "placeholder"
    }
    name = "drew"
  }
  lifecycle {
    ignore_changes = [
      metadata[0].annotations["cattle.io/status"],
      metadata[0].annotations["field.cattle.io/projectId"],
      metadata[0].annotations["lifecycle.cattle.io/create.namespace-auth"],
      metadata[0].labels["field.cattle.io/projectId"]
    ]
  }
}
