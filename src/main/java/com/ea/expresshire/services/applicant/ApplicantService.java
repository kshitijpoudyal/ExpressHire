package com.ea.expresshire.services.applicant;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;

import java.util.List;

public interface ApplicantService {

    public void addNewApplicant(Applicant applicant);

    public Applicant findApplicantById(long id);

    public void updateApplicant(Applicant applicant);

    Applicant getApplicantByEmail(String email);

    List<Applicant> findApplicants();

    void deleteApplicant(Applicant applicant);
}


