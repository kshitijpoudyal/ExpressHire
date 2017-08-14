package com.ea.expresshire.exception;

import javafx.scene.Parent;

public class UserNotFoundException extends ParentException {

    public UserNotFoundException(String message) {
        super(message);
    }
}
