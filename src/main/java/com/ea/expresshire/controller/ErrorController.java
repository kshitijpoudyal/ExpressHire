package com.ea.expresshire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by kcp on 8/15/17.
 */
@Controller
public class ErrorController {
    @RequestMapping("/403")
    public String err(){
        return "403";
    }

    @RequestMapping("/404")
    public String err404(){
        return "404";
    }
}
