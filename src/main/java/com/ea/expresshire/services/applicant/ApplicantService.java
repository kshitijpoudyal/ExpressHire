package com.ea.expresshire.services.applicant;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;

import java.util.List;
import java.security.Principal;

public interface ApplicantService {

    void addNewApplicant(Applicant applicant);

    Applicant findApplicantById(long id);

    void updateApplicant(Applicant applicant, Principal principal);

    Applicant getApplicantByEmail(String email);

    List<Applicant> findApplicants();

    void deleteApplicant(Applicant applicant);
}


