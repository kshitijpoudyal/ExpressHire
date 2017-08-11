package com.ea.expresshire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by kcp on 8/10/17.
 */
@Controller
public class JobController {
    @RequestMapping("/")
    public String redirectRoot() {
        return "index";
    }
}
