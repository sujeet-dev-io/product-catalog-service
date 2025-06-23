# 🛍️ Product Catalog Service

This is a Spring Boot-based REST API that provides product listing, search, filtering, and health check functionalities.

---

## 📁 Endpoints Overview

### 🔍 Search Products by Keyword

* **URL**: `http://localhost:8080/product/search?keyword=smart`
* **Method**: `GET`
* **Description**: Search products by name/description using a keyword.
* **Sample Response**:

```json
[
  {
    "id": 2,
    "name": "Smartphone",
    "description": "Android phone with great camera",
    "price": 25000.0
  }
]
```

### 📦 Get All Products

* **URL**: `http://localhost:8080/products`
* **Method**: `GET`
* **Description**: Retrieve the full product list.
* **Sample Response**:

```json
[
  {
    "id": 1,
    "name": "Laptop",
    "description": "A high performance laptop",
    "price": 75000.0
  },
  {
    "id": 2,
    "name": "Smartphone",
    "description": "Android phone with great camera",
    "price": 25000.0
  },
  {
    "id": 3,
    "name": "Headphones",
    "description": "Noise cancelling headphones",
    "price": 4000.0
  }
]
```

### ❤️ Health Check

* **URL**: `http://localhost:8080/health`
* **Method**: `GET`
* **Description**: Check if the product catalog service is up and running.
* **Sample Response**:

```text
Product catalog service is healthy.
```

### 🎯 Filter Products by Price Range

* **URL**: `http://localhost:8080/products/search?minPrice=20000&maxPrice=60000`
* **Method**: `GET`
* **Description**: Filter products within a price range.
* **Sample Response**:

```json
[
  {
    "id": 2,
    "name": "Smartphone",
    "description": "Android phone with great camera",
    "price": 25000.0
  }
]
```

#### ❌ Invalid Filter Case

* **URL**: `http://localhost:8080/products/search?minPrice=80000&maxPrice=30000`
* **Response**:

```json
{
  "error": "minPrice cannot be greater than maxPrice"
}
```

---

## 🚀 Deployment Instructions

### 🖥️ Local (Docker)

```bash
# 1. Build Docker image
docker build -t devdot021/product-catalog-service:v1.0.0 .

# 2. Run container
docker run -p 8080:8080 devdot021/product-catalog-service:v1.0.0

# 3. Test API
curl http://localhost:8080/products
```

### ☸️ Kubernetes (Minikube)

```bash
# 1. Start Minikube
minikube start

# 2. Create namespace
kubectl create namespace product-catalog

# 3. Apply resources
kubectl apply -f k8s/ -n product-catalog

# 4. Expose service (NodePort or Ingress)
minikube service product-catalog-service -n product-catalog
```

---

## 🔄 CI/CD Pipeline (GitHub Actions)

* GitHub Actions used for CI/CD pipeline.
* On every push to `main` branch:

  1. Docker image is built using multi-stage Dockerfile
  2. Image is pushed to Docker Hub: `devdot021/product-catalog-service`
* Workflow file path: `.github/workflows/docker-image.yml`

### 🔐 GitHub Secrets

* `DOCKER_USERNAME`
* `DOCKER_PASSWORD`

🧪 *Future Improvement*: Add CD for auto `kubectl apply` to a cluster.

---

## 📊 Logging & Monitoring (Basic)

* Uses Spring Boot's default logging (Logback)
* View logs using:

  * `docker logs <container-id>`
  * `kubectl logs <pod-name> -n product-catalog`

### Optional Advanced Setup

* Integrate **Prometheus + Grafana** for metrics
* Add **Spring Actuator** for `/health` and `/metrics`

---

> Author: *Sujeet Prajapati*
