# Terraform Deployment with GitHub Actions 🚀

This project uses GitHub Actions to deploy Terraform infrastructure across multiple production regions.

---

## 📌 Overview

This workflow allows you to:

- Deploy infrastructure to multiple regions
- Automate Terraform execution
- Maintain a simple and consistent deployment process

---

## ⚙️ How It Works

The GitHub Actions workflow includes:

### 1. Setup Job
- Installs required dependencies
- Installs AWS CLI

### 2. Deployment Jobs
- Deploys infrastructure to:
  - Production Region 1 (`ap-south-1`)
  - Production Region 2 (`ap-southeast-1`)
- Executes:
  - `terraform init`
  - `terraform validate`
  - `terraform apply`

---


## 🔐 Required Secrets

Add the following secrets in your GitHub repository:

- `AWS_ACCESS_KEY_ID_PROD`
- `AWS_SECRET_ACCESS_KEY_ID_PROD`

---

## 📁 Project Structure

terraform/

├── Prod-region1/

├── Prod-region2/

---

## ⚠️ Notes

- Setup runs before deployments
- Each region is deployed separately after setup

---

## 👨‍💻 Author

Created as part of a DevOps learning project.
