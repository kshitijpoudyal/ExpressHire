package com.ea.expresshire.controller;

import com.ea.expresshire.exception.ParentException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {

    @ExceptionHandler(ParentException.class)
    public String handleUserNotFoundException(ParentException ex, Model model) {

        model.addAttribute("errorMessage", ex.getMessage());

        return "error_page";
    }
}
