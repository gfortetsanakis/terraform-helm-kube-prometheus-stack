# Terraform module for kube-prometheus-stack

This module deploys the following helm chart on a kubernetes cluster:

| Name                  | Repository                                         | Version |
| --------------------- | -------------------------------------------------- | ------- |
| kube-prometheus-stack | https://prometheus-community.github.io/helm-charts | 39.9.0  |

## Module input parameters

| Parameter              | Type     | Description                                                                                     |
| ---------------------- | -------- | ----------------------------------------------------------------------------------------------- |
| namespace              | Required | The kubernetes namespace at which the kube-prometheus-stack chart will be deployed              |
| domain                 | Required | The external DNS domain of the kubernetes cluster                                               |
| certificate_issuer     | Required | The name of the certificate issuer that will be used to issue certificates for the stack UIs    |
| storage_class          | Required | The storage class used to created persistent volume claims for the chart                        |
| grafana_admin_password | Required | The password for the grafana admin user                                                         |
| alertmanager_vol_size  | Optional | The size of the persistent volume claim requested for the alert manager backend. Default is 5Gi |
| prometheus_vol_size    | Optional | The size of the persistent volume claim requested for the prometheus backend. Default is 5Gi    |
| node_selector          | Optional | A map variable with nodeSelector labels applied when placing pods of the chart on the cluster   |

## Module output parameters

| Parameter         | Description                  |
| ----------------- | ---------------------------- |
| alert_manager_url | The URL of the alert manager |
| prometheus_url    | The URL of prometheus        |
| grafana_url       | The URL of grafana           |