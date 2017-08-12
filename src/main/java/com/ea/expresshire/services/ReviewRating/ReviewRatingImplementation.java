package com.ea.expresshire.services.ReviewRating;

import com.ea.expresshire.dao.ReviewRatingRepository;
import com.ea.expresshire.model.ReviewRating;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by kcp on 8/12/17.
 */
public class ReviewRatingImplementation implements ReviewRatingService{
    @Autowired
    ReviewRatingRepository reviewRatingRepository;

    @Override
    public void addReviewRating(ReviewRating reviewRating) {
        reviewRatingRepository.save(reviewRating);
    }
}
