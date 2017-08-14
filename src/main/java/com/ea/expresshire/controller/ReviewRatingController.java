package com.ea.expresshire.controller;

import com.ea.expresshire.model.Admin;
import com.ea.expresshire.model.ReviewRating;
import com.ea.expresshire.services.ReviewRating.ReviewRatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kcp on 8/12/17.
 */
@RequestMapping("/recruiter")
public class ReviewRatingController {
    @Autowired
    ReviewRatingService reviewRatingService;

    @RequestMapping(value = "/job/reviewRating", method = RequestMethod.POST)
    public void addReviewRating(@ModelAttribute("reviewRating") ReviewRating reviewRating){
        reviewRatingService.addReviewRating(reviewRating);
    }
}
