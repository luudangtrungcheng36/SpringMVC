package vn.cheng.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.cheng.laptopshop.domain.Product;
import vn.cheng.laptopshop.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void handleSaveProduct(Product product) {
        productRepository.save(product);
    }

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(long id) {
        return productRepository.findById(id).orElseThrow();
    }

    public void deleteProductById(long id) {
        productRepository.deleteById(id);
    }
}
