package vn.cheng.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemController {

    @GetMapping("/product/detail")
    public String getProductPage() {
        return "/client/product/detail";
    }

}
