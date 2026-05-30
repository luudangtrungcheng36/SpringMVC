package vn.cheng.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import vn.cheng.laptopshop.domain.Product;
import vn.cheng.laptopshop.service.ProductService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import vn.cheng.laptopshop.service.UploadService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

    private final UploadService uploadService;
    private final ProductService productService;

    public ProductController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/product")
    public String getListProduct(Model model) {
        List<Product> products = productService.getAllProducts();
        model.addAttribute("products", products);
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model, Product product) {
        model.addAttribute("newProduct", product);
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String createProduct(@ModelAttribute Product product, @RequestParam("productFile") MultipartFile file) {

        if (!file.isEmpty()) {
            String image = uploadService.handleSaveUploadFile(file, "products");
            product.setImage(image);
        }
        productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{id}")
    public String getDetailProduct(@PathVariable long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "admin/product/detail";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdateProductPage(Model model, @PathVariable long id) {
        Product product = productService.getProductById(id);
        model.addAttribute("updateProduct", product);

        return "admin/product/update";
    }

    @PostMapping("/admin/product/update/{id}")
    public String updateProduct(@PathVariable long id, @ModelAttribute Product updateProduct,
            @RequestParam("productFile") MultipartFile file) {
        Product currentProduct = productService.getProductById(id);

        currentProduct.setName(updateProduct.getName());
        currentProduct.setPrice(updateProduct.getPrice());
        currentProduct.setQuantity(updateProduct.getQuantity());
        currentProduct.setDetailDesc(updateProduct.getDetailDesc());
        currentProduct.setShortDesc(updateProduct.getShortDesc());
        currentProduct.setFactory(updateProduct.getFactory());
        currentProduct.setTarget(updateProduct.getTarget());

        if (!file.isEmpty()) {
            String image = uploadService.handleSaveUploadFile(file, "products");
            currentProduct.setImage(image);
        }

        productService.handleSaveProduct(currentProduct);
        return "redirect:/admin/product";
    }

    @PostMapping("/admin/product/delete/{id}")
    public String deleteProduct(@PathVariable long id) {

        productService.deleteProductById(id);
        return "redirect:/admin/product";
    }

}
