package com.ea.expresshire.services.user;

import com.ea.expresshire.dao.UserRepository;
import com.ea.expresshire.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserRepository userRepository;

    @Override
    public void addNewUser(User user) {
       userRepository.save(user);
    }
}
