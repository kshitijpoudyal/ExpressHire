package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.model.Recruiter;

import java.security.Principal;

public interface RecruiterService {

    public void addNewRecruiter(Recruiter recruiter);

    public Recruiter findRecruiterById(long id);

    Recruiter getRecruiterByEmail(String email);

    void updateRecruiter(Recruiter recruiter, Principal principal);
}
