package com.ea.expresshire.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
public class Recruiter {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "company_name")
    @NotEmpty
    private String companyName;

    //TODO: address. Now, no need for the address.
}
