package com.ea.expresshire.controller;

import com.ea.expresshire.model.Job;
import com.ea.expresshire.model.JobStatus;
import com.ea.expresshire.model.Recruiter;
import com.ea.expresshire.services.job.JobService;
import com.ea.expresshire.services.recruiter.RecruiterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;
import java.util.Date;

@Controller
@PreAuthorize("hasRole('ROLE_RECRUITER')")
public class JobController {

    @Autowired
    private JobService jobService;

    @Autowired
    private RecruiterService recruiterService;

    public JobController() {
    }

    @Autowired
    public JobController(JobService jobService){
        this.jobService=jobService;
    }

    @RequestMapping("/jobPost")
    public String jobPost() {
        return "postJob";
    }

    @PostMapping("/jobPost")
    public String postJob(@ModelAttribute("job") Job job, long recruiter_id){
        job.setDateTime(new Date());
        Recruiter recruiter = recruiterService.findRecruiterById(recruiter_id);
        recruiter.getPostedJobs().add(job);
        job.setJobStatus(JobStatus.OPEN);
        jobService.saveJob(job);
        return "redirect:/recruiter";
    }
  
    @GetMapping("/jobs")
    public String getListOfJobs(Model model){
        model.addAttribute("jobs", jobService.getJobs());
        return "jobList";
    }


}
