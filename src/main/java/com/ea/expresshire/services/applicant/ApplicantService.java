package com.ea.expresshire.services.applicant;

import com.ea.expresshire.model.Applicant;

public interface ApplicantService {

    public void addNewApplicant(Applicant applicant);

    public Applicant findApplicantById(long id);

    public void updateApplicant(Applicant applicant);
}


