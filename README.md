# DevSecOps Assignment – LenDen

## Project Overview

This project demonstrates a **DevSecOps pipeline** that integrates security scanning, infrastructure validation, and CI/CD automation. The goal is to identify and remediate infrastructure security vulnerabilities and automate the build and deployment process using Jenkins.

The pipeline performs the following tasks:

* Clones source code from GitHub
* Performs security scanning on Terraform configurations
* Initializes and validates Terraform infrastructure
* Builds a Docker image for the application

This project showcases how **security can be integrated early into the CI/CD pipeline**, following DevSecOps principles.

---

# Architecture

GitHub Repository → Jenkins Pipeline → Security Scan (Trivy) → Terraform Validation → Docker Build

---

# Project Structure

```
lenden-devsecops-assignment

app/
   app.py
   requirements.txt

docker/
   Dockerfile

terraform/
   main.tf

Jenkinsfile
README.md
```

---

# Tools & Technologies Used

* **Jenkins** – CI/CD automation
* **Docker** – Containerization
* **Terraform** – Infrastructure as Code
* **Trivy** – Security vulnerability scanning
* **GitHub** – Source code management
* **Python (Flask)** – Simple web application

---

# CI/CD Pipeline Stages

The Jenkins pipeline performs the following stages:

### 1. Checkout Code

The pipeline fetches the latest source code from the GitHub repository.

### 2. Security Scan (Trivy)

Trivy scans the Terraform configuration files to identify infrastructure security vulnerabilities.

### 3. Terraform Initialization

Terraform initializes the configuration and downloads required providers.

### 4. Terraform Plan

Terraform validates the infrastructure configuration and generates an execution plan.

### 5. Docker Build

The application is containerized using Docker.

---

# Security Vulnerability Identified

During the initial scan, the following vulnerability was detected:

```
Security group allowed unrestricted access:
cidr_blocks = ["0.0.0.0/0"]
```

This configuration allowed access from any IP address, which is a potential security risk.

---

# Security Fix Implemented

The issue was remediated by restricting access to a private network range:

```
cidr_blocks = ["10.0.0.0/16"]
```

After remediation, the Trivy scan reported:

```
Clean (no security findings detected)
```

---

# Screenshots

## Security Vulnerability Scan

(Screenshot showing vulnerability detected)

## Security Fix Verification

(Screenshot showing clean scan result)

## Jenkins Pipeline Success

(Screenshot showing all pipeline stages passing)

## Application Running

(Screenshot showing the application running via browser)

---

# Application Deployment

To run the application locally:

### Build Docker Image

```
docker build -t devsecops-app -f docker/Dockerfile .
```

### Run Container

```
docker run -p 5000:5000 devsecops-app
```

Access the application via:

```
http://localhost:5000
```

---

# GenAI Usage Report

Generative AI tools were used during the development of this assignment to assist in:

* Understanding DevSecOps best practices
* Identifying Terraform security misconfigurations
* Remediating infrastructure vulnerabilities
* Writing Jenkins pipeline scripts
* Troubleshooting Docker, Terraform, and Jenkins configuration issues
* Structuring the project and documentation

AI assistance helped accelerate development while ensuring that security vulnerabilities were properly identified and resolved.

---

# Video Demonstration

The demonstration video includes:

* Overview of the GitHub repository
* Security vulnerability detection using Trivy
* Security remediation of Terraform configuration
* Jenkins pipeline execution
* Application running in the browser

---

# Conclusion

This project demonstrates how **DevSecOps practices can integrate security checks into the CI/CD pipeline**, ensuring that infrastructure vulnerabilities are detected and fixed early in the development lifecycle.

By combining **Terraform, Docker, Trivy, and Jenkins**, the project provides a simple yet effective implementation of a secure DevSecOps workflow.
