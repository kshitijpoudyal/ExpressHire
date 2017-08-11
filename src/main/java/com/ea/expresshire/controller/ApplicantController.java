package com.ea.expresshire.controller;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.services.applicant.ApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/applicant")
public class ApplicantController {

    @Autowired
    private ApplicantService applicantService;

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public void signUpPost(@RequestBody @Valid Applicant applicant) {
        //TODO: in the service layer, I have to check if the user is already exist or not.
        applicantService.addNewApplicant(applicant);
    }
}
