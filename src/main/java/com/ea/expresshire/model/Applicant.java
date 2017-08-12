package com.ea.expresshire.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Applicant {

    @Id
    @GeneratedValue
    private long id;

//    //user name must be unique. We should handle this in the front end also. I'll search about this.
//    @NotEmpty
//    private String userName;
//
//    @NotEmpty
//    @Email
//    private String email;
//
//    @NotEmpty
//    private String password;

    @NotEmpty
    private String firstName;

    @NotEmpty
    private String lastName;

    //TODO: Address. Now, no need for it.

//    private boolean isActive; //TODO: if we have enough time, we will do it.
}
