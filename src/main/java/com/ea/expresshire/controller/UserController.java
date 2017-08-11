package com.ea.expresshire.controller;

import com.ea.expresshire.model.User;
import com.ea.expresshire.services.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/signup")
    public void signUp(@RequestBody @Valid User user) {

        userService.addNewUser(user);

    }


}
