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

---

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

---

### ❤️ Health Check

* **URL**: `http://localhost:8080/health`
* **Method**: `GET`
* **Description**: Check if the product catalog service is up and running.
* **Sample Response**:

```text
Product catalog service is healthy.
```

---

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

## ✅ Status

* Fully working ✅
* Tested with `Spring Boot` + `Postman`

> Author: *Sujeet Prajapati*
