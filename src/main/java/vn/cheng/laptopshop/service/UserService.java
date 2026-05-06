package vn.cheng.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.cheng.laptopshop.domain.Role;
import vn.cheng.laptopshop.domain.User;
import vn.cheng.laptopshop.repository.RoleRepository;
import vn.cheng.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public void handleSaveUser(User user) {
        Role role = roleRepository.findByName(user.getRole().getName());
        user.setRole(role);
        userRepository.save(user);
    }

    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    public User getUserById(long id) {
        return userRepository.findById(id).orElse(null);
    }

    public void deleteUserById(long id) {
        userRepository.deleteById(id);
    }
}
