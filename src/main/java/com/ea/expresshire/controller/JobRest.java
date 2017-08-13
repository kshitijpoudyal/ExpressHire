package com.ea.expresshire.controller;

import com.ea.expresshire.model.Job;
import com.ea.expresshire.services.job.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Raw on 8/11/2017.
 */
@RestController
public class JobRest {
    private JobService jobService;

    @Autowired
    public JobRest(JobService jobService){
        this.jobService=jobService;
    }





  @RequestMapping(value = "/job",method = RequestMethod.GET)
    public List<Job> getAllJob(){
        return jobService.getJobs();
    }

    @RequestMapping(value = "/job", method = RequestMethod.POST)
    public void addJob(@RequestBody Job job){
        jobService.saveJob(job);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/job/{id}")
    public void updateJob(@RequestBody Job job, @PathVariable int id) {
        job.setId(id);
        jobService.saveJob(job);
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/deleteJob/{id}")
    public void deleteJob(@PathVariable long id){
        jobService.deleteJob(id);
    }




}
