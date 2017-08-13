package com.ea.expresshire.services.applicant;


import com.ea.expresshire.dao.ApplicantRepository;
import com.ea.expresshire.model.Applicant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class ApplicantServiceImpl implements ApplicantService{

    @Autowired
    ApplicantRepository applicantRepository;


    @Transactional
    @Override
    public void addNewApplicant(Applicant applicant) {
        applicantRepository.save(applicant);
    }

    @Override
    public Applicant findApplicantById(long id) {
        Optional<Applicant> optional = applicantRepository.findById(id);
        return optional.get();
    }
}
