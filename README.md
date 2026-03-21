# 🚀 Azure DevOps Bicep Multi-Stage CI/CD Pipeline

## 📌 Overview

This project demonstrates an end-to-end Azure DevOps CI/CD pipeline for deploying Azure infrastructure using Bicep (Infrastructure as Code).

The solution implements a multi-stage pipeline with validation, what-if preview, automated Dev deployment, and approval-based Production release. It also integrates monitoring and governance practices such as tagging and diagnostics.

---

## 🏗️ Architecture

![Architecture](docs/screenshots/architecture/architecture-diagram.png)

---

## 🔄 Pipeline Flow


Code → Validate → What-If → Deploy Dev → Approval → Deploy Prod


### Stages:
- **Validate** → Bicep build + What-If preview
- **Deploy Dev** → Automatic deployment to Dev environment
- **Deploy Prod** → Approval-gated deployment to Production

---

## ⚙️ Key Features

- ✅ Multi-stage Azure DevOps pipeline  
- ✅ Infrastructure as Code using Bicep  
- ✅ What-If validation before deployment  
- ✅ Environment-based deployment (Dev & Prod)  
- ✅ Manual approval gate for Production  
- ✅ Reusable YAML templates (modular pipeline design)  
- ✅ Centralized configuration using Variable Groups  
- ✅ Monitoring with Log Analytics  
- ✅ Governance using resource tagging  

---

## 🧰 Technologies Used

- Azure DevOps (Pipelines)
- Bicep (IaC)
- Azure CLI
- Azure Storage Account
- Azure Monitor (Log Analytics)
- Azure Resource Groups

---

## 📸 Screenshots

### 🔹 Pipeline Overview
![Pipeline](docs/screenshots/pipeline/pipeline-overview.png)

---

### 🔹 Validation & What-If
![Validation](docs/screenshots/validation/validate-stage-success.png)
![WhatIf](docs/screenshots/03-validation/what-if-output.png)

---

### 🔹 Dev Deployment
![Dev Deploy](docs/screenshots/dev-deployment/dev-deployment-success.png)
![Dev Resources](docs/screenshots/dev-deployment/dev-resources.png)

---

### 🔹 Production Approval Gate
![Approval](docs/screenshots/prod-approval/prod-approval-pending.png)

---

### 🔹 Production Deployment
![Prod Deploy](docs/screenshots/prod-deployment/prod-deployment-success.png)
![Prod Resources](docs/screenshots/prod-deployment/prod-resources.png)

---

### 🔹 Azure Resources
![Storage](docs/screenshots/azure-resources/storage-account-overview.png)
![Log Analytics](docs/screensshots/azure-resources/log-analytics-overview.png)

---

### 🔹 Monitoring
![Diagnostics](docs/screenshots/monitoring/diagnostic-settings.png)
![Logs](docs/screenshots/08-monitoring/log-analytics-logs.png)

---

### 🔹 Resource Tagging (Governance)
![Tags Storage](docs/screenshots/tags/tags-storage.png)
![Tags LA](docs/screenshots/tags/tags-loganalytics.png)

---

## 🧠 Key Learnings

- Designed and implemented CI/CD pipelines for infrastructure using Bicep  
- Applied DevOps best practices with staged deployments and approvals  
- Used What-If deployment to prevent unintended changes  
- Implemented monitoring and diagnostics using Azure Monitor  
- Applied tagging strategy for cost visibility and governance  
- Built reusable and modular pipeline templates  

---

## 🔮 Future Enhancements

- Azure Policy for enforcing tagging standards  
- Cost alerts and budget monitoring  
- Terraform-based pipeline integration  
- Containerized application deployment (Docker + ACR + AKS)  

---

## 👤 Author

**Rambabu Katta**  
Azure | DevOps | Cloud Engineer (Transitioning)