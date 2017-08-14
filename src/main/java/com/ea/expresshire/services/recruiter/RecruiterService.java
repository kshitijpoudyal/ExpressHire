package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.model.Recruiter;

public interface RecruiterService {

    public void addNewRecruiter(Recruiter recruiter);

    public Recruiter findRecruiterById(long id);

    public void updateRecruiter(Recruiter recruiter);

    Recruiter getRecruiterByEmail(String email);

}
