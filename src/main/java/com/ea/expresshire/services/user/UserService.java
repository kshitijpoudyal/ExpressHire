package com.ea.expresshire.services.user;

import com.ea.expresshire.model.User;

public interface UserService {

    /**
     * Add new user
     *
     * @param user
     * @return user id
     */
    public void addNewUser(User user);

    public User findUserById(long id);
}
