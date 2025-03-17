package org.codegym.mvc.service;

import org.codegym.mvc.module.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private List<Product> products = new ArrayList<>();

    public ProductService() {
        // Thêm một số sản phẩm mẫu
        products.add(new Product(1, "Bút chì"));
        products.add(new Product(2, "Sách vở"));
        products.add(new Product(3, "Cặp sách"));
    }

    public List<Product> findAll() {
        return products;
    }

    public void addProduct(Product product) {
        products.add(product);
    }
}
