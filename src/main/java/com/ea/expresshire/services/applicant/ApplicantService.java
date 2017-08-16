package com.ea.expresshire.services.applicant;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;

import java.util.List;

public interface ApplicantService {

    public void addNewApplicant(Applicant applicant);

    public Applicant findApplicantById(long id);

    public void updateApplicant(Applicant applicant);

    Applicant getApplicantByEmail(String email);

    void deleteApplicant(Applicant applicant);

/*
    List<Applicant> getAllApplicant();
*/
}


