package vn.cheng.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import vn.cheng.laptopshop.domain.User;
import vn.cheng.laptopshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getMethodName() {
        return "hello.html";
    }

    @GetMapping("/admin/user")
    public String getUserListPage(Model model) {
        List<User> users = userService.getAllUser();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUser(@ModelAttribute("newUser") User user) {

        userService.handleSaveUser(user);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User user = userService.getUserById(id);
        model.addAttribute("updateUser", user);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update/{id}")
    public String updateUser(@PathVariable long id, @ModelAttribute("updateUser") User userUpdate) {
        User user = userService.getUserById(id);
        user = userUpdate;
        userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @PostMapping("/admin/user/delete/{id}")
    public String deleteUser(@PathVariable long id) {

        userService.deleteUserById(id);

        return "redirect:/admin/user";
    }

}
