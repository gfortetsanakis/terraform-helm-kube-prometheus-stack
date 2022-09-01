resource "helm_release" "kube-prometheus-stack" {
  chart            = "kube-prometheus-stack"
  name             = "kube-prometheus-stack"
  namespace        = var.namespace
  create_namespace = true
  repository       = "https://prometheus-community.github.io/helm-charts"
  version          = "39.9.0"
  wait             = true

  values = [
    templatefile("${path.module}/templates/kube-prometheus-stack.yaml", {
      node_selector          = var.node_selector
      certificate_issuer     = var.certificate_issuer
      domain                 = var.domain
      storage_class          = var.storage_class
      alertmanager_vol_size  = var.alertmanager_vol_size
      prometheus_vol_size    = var.prometheus_vol_size
      grafana_admin_password = var.grafana_admin_password
    })
  ]
}