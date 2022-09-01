variable "namespace" {
  description = "The kubernetes namespace at which the kube-prometheus-stack chart will be deployed."
}

variable "domain" {
  description = "The external DNS domain of the kubernetes cluster."
}

variable "certificate_issuer" {
  description = "The name of the certificate issuer that will be used to issue certificates for the stack UIs."
}

variable "storage_class" {
  description = "The storage class used to created persistent volume claims for the chart."
}

variable "grafana_admin_password" {
  description = "The password for the grafana admin user."
}

variable "alertmanager_vol_size" {
  description = "The size of the persistent volume claim requested for the alert manager backend."
  default     = "5Gi"
}

variable "prometheus_vol_size" {
  description = "The size of the persistent volume claim requested for the prometheus backend."
  default     = "5Gi"
}

variable "node_selector" {
  description = "A map variable with nodeSelector labels applied when placing pods of the chart on the cluster."
  default     = {}
}