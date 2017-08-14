package com.ea.expresshire.model;

import javax.persistence.*;

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
}
