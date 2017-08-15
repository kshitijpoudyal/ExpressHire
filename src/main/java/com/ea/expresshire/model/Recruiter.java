package com.ea.expresshire.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.List;

@Entity
public class Recruiter extends User{

    @Column(name = "company_name")
    @NotEmpty
    private String companyName;

    private String name;

    @OneToMany(cascade = CascadeType.ALL)
    private List<Job> postedJobs;

    private int averageRating;

    public int getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(int averageRating) {
        this.averageRating = averageRating;
    }

    public List<Job> getPostedJobs() {
        return postedJobs;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPostedJobs(List<Job> postedJobs) {
        this.postedJobs = postedJobs;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
