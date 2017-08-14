package com.ea.expresshire.model;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class User {

    @Id
    @GeneratedValue
    private long id;

//    @NotEmpty
//    @Email
    private String email;

    //    @NotEmpty
    private String password;

    @Enumerated(EnumType.STRING)
    private UserType userType;

    private Boolean enabled;

    //    private boolean isActive; //TODO: if we have enough time, we will do it.

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }
}
