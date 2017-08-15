package com.ea.expresshire.controller;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;
import com.ea.expresshire.model.UserType;
import com.ea.expresshire.services.recruiter.RecruiterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;

@Controller
@RequestMapping("/recruiter")
public class RecruiterController {

    @Autowired
    RecruiterService recruiterService;

    @RequestMapping(value = "/signup", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    //TODO: put @Valid.
    public String signUpPost(@RequestBody Recruiter recruiter) {
        //TODO: in the service layer, I have to check if the user is already exist or not.
        recruiter.setUserType(UserType.ROLE_RECRUITER);
        recruiterService.addNewRecruiter(recruiter);
        return "redirect:/recruiter";
    }


    @PreAuthorize("hasRole('ROLE_RECRUITER')")
    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    //TODO: put @Valid.
    public void updateRecruiter(@RequestBody Recruiter recruiter, Principal principal) {

        recruiterService.updateRecruiter(recruiter, principal);
    }


    @PreAuthorize("hasRole('ROLE_RECRUITER')")
    @RequestMapping("")
    public String profile(Model model, Principal principal){
        model.addAttribute("recruiterProfile", recruiterService.getRecruiterByEmail(principal.getName()));
        return "recruiter";
    }
}
