resource "kubernetes_namespace" "chartmuseum" {
  metadata {
    annotations = {
      name = "chartmuseum"
    }
    
    name = "chartmuseum"
  }
}

resource "kubernetes_namespace" "provisioners" {
  metadata {
    annotations = {
      name = "provisioners"
    }
    
    name = "provisioners"
  }
}
