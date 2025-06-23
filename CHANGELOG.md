# 📦 Changelog: Product Catalog Service

All notable changes to this project will be documented in this file.

---

## [v2.0.0] - 2025-06-23
### 🆕 Added
- Enhanced `/products/search` endpoint with query parameters (`?keyword=`)
- Implemented error handling for invalid or empty search requests
- Improved response structure with status codes and messages

---

## [v1.1.0] - 2025-06-22
### 🆕 Added
- New endpoint: `/products/search`
- Allows keyword-based search from product name or description

---

## [v1.0.0] - 2025-06-21
### 🎉 Initial Release
- Spring Boot REST API
- `/products` endpoint to get all products
- `/health` endpoint to verify service health
- Dockerized using multi-stage build
- Kubernetes deployment setup with service and ingress
