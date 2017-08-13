package com.ea.expresshire.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
    public String duration;

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

    public String getDuration() { return duration;}

    public void setDuration(String duration) { this.duration = duration;}
}
