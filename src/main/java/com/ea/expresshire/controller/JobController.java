package com.ea.expresshire.controller;

import com.ea.expresshire.model.Job;
import com.ea.expresshire.services.job.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by kcp on 8/10/17.
 */
@Controller
public class JobController {


    private JobService jobService;

    @Autowired
    public JobController(JobService jobService){
        this.jobService=jobService;
    }



    @RequestMapping("/")
    public String redirectRoot() {
        return "index";
    }

    @RequestMapping("/jobPost")
    public String jobPost() {
        return "postJob";
    }

    @PostMapping("/jobPost")
    public String postJob(@ModelAttribute("job") Job job){
        jobService.saveJob(job);

        System.out.println(job.getTitle());
        return "postJob";
    }

    @GetMapping("/jobs")
    public String getListOfJobs(Model model){
        model.addAttribute("jobs", jobService.getJobs());
        return "jobList";
    }




}
