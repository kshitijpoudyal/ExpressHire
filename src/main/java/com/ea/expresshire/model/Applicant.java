package com.ea.expresshire.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
public class Applicant extends User{
    //@NotEmpty
    private String firstName;

    //@NotEmpty
    private String lastName;

    @ManyToMany
//    @ManyToMany(cascade = CascadeType.ALL)
    private List<Job> appliedJobs;

    @OneToMany
//    @OneToMany(cascade = CascadeType.ALL)
    private List<Job> approvedJobs;

    private int averageRating;

    //TODO: Address. Now, no need for it.


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public List<Job> getAppliedJobs() {
        return appliedJobs;
    }

    public void setAppliedJobs(List<Job> appliedJobs) {
        this.appliedJobs = appliedJobs;
    }

    public List<Job> getApprovedJobs() {
        return approvedJobs;
    }

    public void setApprovedJobs(List<Job> approvedJobs) {
        this.approvedJobs = approvedJobs;
    }

    public int getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(int averageRating) {
        this.averageRating = averageRating;
    }

    @Override
    public String toString() {
        return "Applicant{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", appliedJobs=" + appliedJobs +
                '}';
    }
}