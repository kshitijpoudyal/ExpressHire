package com.ea.expresshire.controller;

import com.ea.expresshire.model.Admin;
import com.ea.expresshire.model.Recruiter;
import com.ea.expresshire.model.ReviewRating;
import com.ea.expresshire.services.ReviewRating.ReviewRatingService;
import com.ea.expresshire.services.job.JobService;
import com.ea.expresshire.services.recruiter.RecruiterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/**
 * Created by kcp on 8/12/17.
 */
@Controller
public class ReviewRatingController {
    @Autowired
    ReviewRatingService reviewRatingService;

    @Autowired
    private JobService jobService;

    @RequestMapping(value = "/reviewRating", method = RequestMethod.POST)
    public String addReviewRating(@ModelAttribute("reviewRating") ReviewRating reviewRating, long job_id){
        System.out.println("inside controller");
       jobService.getJob(job_id).setReviewRating(reviewRating);
       reviewRatingService.addReviewRating(reviewRating);
       return "redirect:/recruiter";
    }
}
