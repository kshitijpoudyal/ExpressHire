package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;

import java.security.Principal;
import java.util.List;

public interface RecruiterService {

    public void addNewRecruiter(Recruiter recruiter);

    public Recruiter findRecruiterById(long id);

    Recruiter getRecruiterByEmail(String email);

    void updateRecruiter(Recruiter recruiter, Principal principal);

    List<Recruiter> findRecruiters();

    void deleteRecruiter(Recruiter recruiter);
}
