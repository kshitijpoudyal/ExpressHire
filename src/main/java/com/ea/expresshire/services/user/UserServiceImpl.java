package com.ea.expresshire.services.user;

import com.ea.expresshire.dao.UserRepository;
import com.ea.expresshire.exception.UserNotAuthenticatedException;
import com.ea.expresshire.exception.UserNotFoundException;
import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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

    @Override
    public void deleteUser(long id) {
        userRepository.deleteById(id);
    }

    @Override
    public void deleteUser(Applicant applicant) {
        userRepository.delete(applicant);
    public User findUserByEmail(String email) throws UserNotFoundException {
        Optional<User> optional = userRepository.findByEmail(email);
        if(optional.isPresent()) {
            return optional.get();
        }
        else {
            throw new UserNotFoundException("User not found");
        }
    }

    @Override
    public void login(User userRequest) throws UserNotFoundException, UserNotAuthenticatedException{
        Optional<User> optional = userRepository.findByEmail(userRequest.getEmail());
        if(optional.isPresent()) {
            User userDB = optional.get();

            if( StringUtils.isEmpty(userRequest.getPassword()) || !userRequest.getPassword().equals(userDB.getPassword())) {
                throw new UserNotAuthenticatedException("User name or password are incorrect");
            }
            //now, we are sure that user is authenticated, so we need to add something in the session.
        }
        else {
            throw new UserNotFoundException("User name or password are incorrect");
        }
    }
}
