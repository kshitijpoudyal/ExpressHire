package com.ea.expresshire.controller;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.services.applicant.ApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/applicant")
public class ApplicantController {

    @Autowired
    private ApplicantService applicantService;
    @RequestMapping(value = "/signup", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    //TODO: put @Valid.
    public void signUpPost(@RequestBody Applicant applicant) {
        System.out.println(applicant);
        //TODO: in the service layer, I have to check if the user is already exist or not.
        applicantService.addNewApplicant(applicant);
    }
}
