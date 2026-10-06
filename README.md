# Terraform — Tercer Programa

Práctica académica para desplegar un entorno QA en Microsoft Azure mediante Terraform.

## Infraestructura

- Azure Resource Group.
- Log Analytics Workspace con retención de 30 días y cuota diaria de 0.1 GB.
- Application Insights conectado a Log Analytics.
- Linux App Service Plan en el nivel gratuito F1.
- Linux Web App con Node.js 24 LTS, HTTPS obligatorio, TLS 1.2 y FTPS deshabilitado.

## Requisitos

- Terraform 1.13 o superior.
- Azure CLI con una sesión autenticada.
- Suscripción de Azure con los proveedores necesarios registrados.

## Uso seguro

La suscripción no se almacena en el repositorio. Se obtiene desde Azure CLI y se proporciona a Terraform mediante una variable de entorno:

```bash
export TF_VAR_subscription_id="$(az account show --query id -o tsv)"
terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
```

No publique archivos de estado, planes, archivos `.tfvars` reales ni credenciales.

## Referencia

La práctica se basa en el material de `tercer-programa` del repositorio académico del profesor. El repositorio original se utilizó únicamente como fuente de consulta.
