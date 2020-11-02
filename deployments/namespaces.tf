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
