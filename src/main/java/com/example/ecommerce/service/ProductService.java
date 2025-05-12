package com.example.ecommerce.service;

import com.example.ecommerce.model.Product;
import java.util.*;

public class ProductService {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Laptop", 899.99));
        productList.add(new Product(2, "Smartphone", 599.99));
        productList.add(new Product(3, "Headphones", 99.99));
    }

    public List<Product> getAllProducts() {
        return productList;
    }

    public Product getProductById(int id) {
        for (Product p : productList) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }
}
