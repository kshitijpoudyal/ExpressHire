package com.ea.expresshire.controller;

import com.ea.expresshire.model.Admin;
import com.ea.expresshire.services.job.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kcp on 8/14/17.
 */
@Controller
public class JobSearchController {
    @Autowired
    private JobService jobService;

    @PreAuthorize("hasRole('ROLE_APPLICANT')")
    @RequestMapping(value = "/searchJob", method = RequestMethod.POST)
    public String searchJobs(Model model, String key){
        if(key.equals("")){
            return "redirect:/applicant";
        }
        model.addAttribute("searched",jobService.searchJob(key));
        return "search";
    }
}
