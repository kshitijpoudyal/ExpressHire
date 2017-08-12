package com.ea.expresshire.controller;

import com.ea.expresshire.model.Recruiter;
import com.ea.expresshire.services.recruiter.RecruiterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/recruiter")
public class RecruiterController {

    @Autowired
    RecruiterService recruiterService;

    @RequestMapping("/signup")
    public void signUp(@RequestBody @Valid Recruiter recruiter) {
        recruiterService.addNewRecruiter(recruiter);
    }


}
