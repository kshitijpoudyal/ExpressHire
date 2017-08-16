package com.ea.expresshire.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by kcp on 8/10/17.
 */
@Entity
public class Job {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public long id;
    public String title;
    public String type;
    public String location;
    public String category;
    public String description;
    public String hourlyRate;
    public int duration;
    @ManyToMany(mappedBy = "appliedJobs")
    private List<Applicant> applicants;

    @ManyToOne
    private Applicant approvedApplicant;

    @OneToOne(cascade = CascadeType.ALL)
    private ReviewRating reviewRating;

    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTime;

    @Enumerated(EnumType.STRING)
    private JobStatus jobStatus;

    public ReviewRating getReviewRating() {
        return reviewRating;
    }

    public void setReviewRating(ReviewRating reviewRating) {
        this.reviewRating = reviewRating;
    }

    public Applicant getApprovedApplicant() {
        return approvedApplicant;
    }

    public void setApprovedApplicant(Applicant approvedApplicant) {
        this.approvedApplicant = approvedApplicant;
    }

    public long getId() {
        return id;
    }

    public List<Applicant> getApplicants() {
        return applicants;
    }

    public void setApplicants(List<Applicant> applicants) {
        this.applicants = applicants;
    }

    public void setId(long id) {this.id = id;}

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getHourlyRate() { return hourlyRate;}

    public void setHourlyRate(String hourlyRate) { this.hourlyRate = hourlyRate;}

    public int getDuration() { return duration;}

    public void setDuration(int duration) { this.duration = duration;}

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public JobStatus getJobStatus() {
        return jobStatus;
    }

    public void setJobStatus(JobStatus jobStatus) {
        this.jobStatus = jobStatus;
    }

    public void removeApplicants(Applicant applicant){
        applicants.remove(applicant);
    }
}
