package com.ea.expresshire.services.user;

import com.ea.expresshire.exception.UserNotAuthenticatedException;
import com.ea.expresshire.exception.UserNotFoundException;
import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.User;

public interface UserService {

    /**
     * Add new user
     *
     * @param user
     * @return user id
     */
    void addNewUser(User user);

    public User findUserById(long id) throws UserNotFoundException;

    void deleteUser(long id);
    void deleteUser(Applicant applicant);
    User findUserById(long id) throws UserNotFoundException;

    User findUserByEmail(String email) throws UserNotFoundException;

    void login(User userRequest) throws UserNotFoundException, UserNotAuthenticatedException;
}
