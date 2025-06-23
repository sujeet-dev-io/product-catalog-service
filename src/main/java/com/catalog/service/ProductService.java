package com.catalog.service;

import com.catalog.dto.ProductResponse;
import com.catalog.entity.Product;
import java.util.List;

public interface ProductService {
    List<Product> getAllProducts();
    List<Product> searchProducts(String keyword);
    List<ProductResponse> searchFiltered(String keyword, Double minPrice, Double maxPrice);


}
