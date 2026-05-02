package vn.cheng.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.cheng.laptopshop.domain.User;
import vn.cheng.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void handleSaveUser(User user) {
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
