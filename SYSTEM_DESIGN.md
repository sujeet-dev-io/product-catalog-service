<<<<<<< HEAD
# 🧱 System Design: Product Catalog Microservice

## 1. 📝 Overview

This microservice provides REST APIs for managing a product catalog. It is containerized using Docker and deployed on a Kubernetes cluster using scalable and secure deployment strategies. CI/CD automation is done using GitHub Actions.

---

## 2. 🏗 Architecture

- **Spring Boot Microservice** exposes endpoints like `/products`, `/products/search`.
- **Docker** used for image packaging.
- **Kubernetes** (Minikube) handles scalable deployment.
- **CI/CD** via GitHub Actions: builds, pushes image to Docker Hub.

---

## 3. 🔁 CI/CD Strategy

- GitHub Actions workflow triggers on every push to `main`.
- Uses multi-stage Docker build.
- Pushes image to Docker Hub under:  
  `devdot021/product-catalog-service`
- Uses secrets:
  - `DOCKER_USERNAME`
  - `DOCKER_PASSWORD`

---

## 4. ☸ Kubernetes Configuration

- Namespace: `product-catalog`
- Manifests in `k8s/` directory:
  - `deployment.yaml` — Deploys app
  - `service.yaml` — Exposes via NodePort
  - `ingress.yaml` — Optional path-based routing
  - `hpa.yaml` — Horizontal Pod Autoscaler

**Resource Limits:**
```yaml
resources:
  requests:
    memory: "256Mi"
    cpu: "250m"
  limits:
    memory: "512Mi"
    cpu: "500m"
=======
>>>>>>> 19b748f (Trigger Docker build)
