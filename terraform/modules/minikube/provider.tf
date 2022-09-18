terraform {
  required_providers {
    minikube = {
      source = "hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
}

provider "minikube" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}
