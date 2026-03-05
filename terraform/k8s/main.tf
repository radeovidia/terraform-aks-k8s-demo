resource "kubernetes_manifest" "namespace" {
  manifest = yamldecode(file("${path.module}/../../kubernetes/namespace.yaml"))
}

resource "helm_release" "nginx_ingress" {
  name             = "ingress-nginx"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress-nginx"
  create_namespace = true
}

resource "kubernetes_manifest" "deployment" {
  manifest = yamldecode(file("${path.module}/../../kubernetes/deployment.yaml"))

  depends_on = [
    kubernetes_manifest.namespace
  ]
}