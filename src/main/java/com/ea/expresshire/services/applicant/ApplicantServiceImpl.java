package com.ea.expresshire.services.applicant;


import com.ea.expresshire.dao.ApplicantRepository;
import com.ea.expresshire.model.Applicant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
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

    @Override
    public void updateApplicant(Applicant applicant) {
        Applicant currentApplicant = new Applicant();//this is just temporary.
                /*
                TODO: I should have a method called getCurrentUser, then I can get the
                current applicant using the userId of the current user. So, I should have another method
                called getCurrentApplicant which will call getCurrentUser.

                 */
        //TODO: may be I have to check if they are empty or not. I have to see the values using debugger.
        if(applicant.getFirstName() != null) {
            currentApplicant.setFirstName(applicant.getFirstName());
        }
        if(applicant.getLastName() != null) {
            currentApplicant.setLastName(applicant.getLastName());
        }
        if(applicant.getEmail() != null) {
            currentApplicant.setEmail(applicant.getEmail());
        }
        if(applicant.getPassword() != null) {
            currentApplicant.setPassword(applicant.getPassword());
        }

        applicantRepository.save(currentApplicant);
    }

    @Override
    public Applicant getApplicantByEmail(String email) {
        return applicantRepository.findByEmail(email);
    }

    @Override
    public List<Applicant> findApplicants() {
        return applicantRepository.findAll();
    }

    @Override
    public void deleteApplicant(Applicant applicant) {
        applicantRepository.delete(applicant);
    }


}
