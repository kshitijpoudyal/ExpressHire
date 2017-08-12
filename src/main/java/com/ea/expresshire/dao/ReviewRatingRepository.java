package com.ea.expresshire.dao;

import com.ea.expresshire.model.ReviewRating;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by kcp on 8/12/17.
 */
public interface ReviewRatingRepository extends JpaRepository<ReviewRating,Long> {
}
