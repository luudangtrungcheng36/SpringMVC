package vn.cheng.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import vn.cheng.laptopshop.domain.User;

@Controller
public class UserController {
    @GetMapping("/")
    public String getMethodName() {
        return "hello.html";
    }

    @GetMapping("/admin/user")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user")
    public String postCreateUser(@ModelAttribute("newUser") User user) {
        System.out.println();
        return "admin/user/show";
    }

}
