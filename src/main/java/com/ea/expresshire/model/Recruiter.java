package com.ea.expresshire.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
public class Recruiter extends User{

    @Column(name = "company_name")
    @NotEmpty
    private String companyName;


    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
