provider "helm" {
  kubernetes {
    config_path = "~/.kube/local-config"
  }
}