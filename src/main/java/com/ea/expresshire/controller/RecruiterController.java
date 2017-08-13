package com.ea.expresshire.controller;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;
import com.ea.expresshire.model.UserType;
import com.ea.expresshire.services.recruiter.RecruiterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/recruiter")
public class RecruiterController {

    @Autowired
    RecruiterService recruiterService;

    @RequestMapping(value = "/signup", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    //TODO: put @Valid.
    public void signUpPost(@RequestBody Recruiter recruiter) {
        //TODO: in the service layer, I have to check if the user is already exist or not.
        recruiter.setUserType(UserType.RECRUITER);
        recruiterService.addNewRecruiter(recruiter);
    }

    @RequestMapping(value = "/{recruiterId}", method = RequestMethod.PUT)
    //TODO: put @Valid.
    public void updateRecruiter(@PathVariable ("recruiterId") long recruiterId, Model model) {

    }

}
