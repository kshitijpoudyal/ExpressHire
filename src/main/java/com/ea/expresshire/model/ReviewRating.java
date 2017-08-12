package com.ea.expresshire.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by kcp on 8/12/17.
 */
@Entity
public class ReviewRating {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private double rating;
    private String comment;
    private long recruiterId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public long getRecruiterId() {
        return recruiterId;
    }

    public void setRecruiterId(long recruiterId) {
        this.recruiterId = recruiterId;
    }
}
