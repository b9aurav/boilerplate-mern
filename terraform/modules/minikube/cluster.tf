resource "kubernetes_namespace" "bp" {
  metadata {
    name = "bp-ns"
  }
}

resource "kubernetes_deployment" "bp" {
  metadata {
    name = "bp-depl"
    labels = {
      test = "boilerplate-mern"
    }
    namespace = "bp-ns"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        test = "boilerplate-mern"
      }
    }

    template {
      metadata {
        labels = {
          test = "boilerplate-mern"
        }
      }

      spec {
        container {
          image = "boilerplate-mern_app:latest"
          name  = "bp-web"
          port {
            container_port = "3000"
          }
        }
        container {
          image = "mongo:latest"
          name = "bp-db"
          port {
            container_port = var.app_config[1]
          }
        }
      }
    }
  }
}
