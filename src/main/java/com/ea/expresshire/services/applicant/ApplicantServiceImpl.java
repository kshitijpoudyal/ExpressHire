package com.ea.expresshire.services.applicant;



import com.ea.expresshire.dao.ApplicantRepository;
import com.ea.expresshire.model.Applicant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.transaction.Transactional;
import java.security.Principal;
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
    public void updateApplicant(Applicant applicant, Principal principal) {
        Applicant currentApplicant = applicantRepository.findByEmail(principal.getName());//this is just temporary.
                /*
                TODO: I should have a method called getCurrentUser, then I can get the
                current applicant using the userId of the current user. So, I should have another method
                called getCurrentApplicant which will call getCurrentUser.

                 */

        if(!StringUtils.isEmpty(applicant.getFirstName().trim())) {
            currentApplicant.setFirstName(applicant.getFirstName().trim());
        }
        if(!StringUtils.isEmpty(applicant.getLastName().trim())) {
            currentApplicant.setFirstName(applicant.getLastName().trim());
        }
        if(!StringUtils.isEmpty(applicant.getPassword())) {
            currentApplicant.setPassword(applicant.getPassword());
        }

        //TODO: update email.
        applicantRepository.save(currentApplicant);
    }

    @Override
    public Applicant getApplicantByEmail(String email) {
        return applicantRepository.findByEmail(email);
    }
}
