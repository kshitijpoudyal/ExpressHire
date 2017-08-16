package com.ea.expresshire.controller;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Job;
import com.ea.expresshire.model.UserType;
import com.ea.expresshire.services.applicant.ApplicantService;
import com.ea.expresshire.services.job.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/applicant")
public class ApplicantController {
    @Autowired
    private JobService jobService;
    @Autowired
    private ApplicantService applicantService;


    @RequestMapping(value = "/signup", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    //TODO: put @Valid.
    public String signUpPost(@RequestBody Applicant applicant) {
        System.out.println(applicant);
        //TODO: in the service layer, I have to check if the user is already exist or not.
        applicant.setUserType(UserType.ROLE_APPLICANT);
        applicantService.addNewApplicant(applicant);
        return "redirect:/applicant";
    }


    @PreAuthorize("hasRole('ROLE_APPLICANT')")
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    //TODO: put @Valid.
    //TODO: receive a principal object, then get the email from there.
    public String updateApplicant(@ModelAttribute("applicantProfile") Applicant applicant, BindingResult result, Principal principal) {
        //TODO: I have to receive the id of that applicant. ==> no need, I can get it from current user(session).
        //if the password is empty, I should not update it.

        applicantService.updateApplicant(applicant, principal);

        return "redirect:/applicant";

    }

    @PreAuthorize("hasRole('ROLE_APPLICANT')")
    @RequestMapping("")
    public String profile(Model model, Principal principal){

        Applicant applicant = applicantService.getApplicantByEmail(principal.getName());
        applicant.setPassword("");
        model.addAttribute("applicantProfile", applicant);

        model.addAttribute("jobs", jobService.getJobs());
        return "applicant";
    }

    @PreAuthorize("hasRole('ROLE_APPLICANT')")
    @RequestMapping("/applyJob")
    public String applyJob(Principal principal,long job_id){
        Applicant applicant = applicantService.getApplicantByEmail(principal.getName());
        applicant.getAppliedJobs().add(jobService.getJob(job_id));
        applicantService.addNewApplicant(applicant);
        return "redirect:/applicant";
    }


/*

    public List<Applicant> findAllApplicant(){
        return applicantService.getAllApplicant();
    }
*/

}
