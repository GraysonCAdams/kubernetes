provider "helm" {
  kubernetes {
    config_path = "~/.kube/local-config"
    config_context = "local"
    insecure = true
  }
}

provider "kubernetes" {
  config_path = "~/.kube/local-config"
  config_context = "local"
  insecure = true
}

provider "aws" {
  region  = "us-east-1"
  profile = "local"
}

terraform {
  required_version = "~> 0.14.0"
  required_providers {
    aws = {
      version = "~> 2.0"
    }
  }
  backend "s3" {
    bucket = "kubernetes-tf-state"
    key    = "terraform.tfstate"
    region = "us-east-1"

    encrypt = true
  }
}
