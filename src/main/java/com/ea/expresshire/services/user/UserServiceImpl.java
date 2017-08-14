package com.ea.expresshire.services.user;

import com.ea.expresshire.dao.UserRepository;
import com.ea.expresshire.exception.UserNotFoundException;
import com.ea.expresshire.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserRepository userRepository;

    @Override
    public void addNewUser(User user) {
       userRepository.save(user);
    }

    @Override
    public User findUserById(long id) throws UserNotFoundException{
        Optional<User> optional = userRepository.findById(id);
        if(optional.isPresent()) {
            return optional.get();
        }
        else {
            throw new UserNotFoundException("User is not found");
        }

    }
}
