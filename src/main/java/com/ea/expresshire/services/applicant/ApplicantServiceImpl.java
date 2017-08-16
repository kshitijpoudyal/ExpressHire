package com.ea.expresshire.services.applicant;



import com.ea.expresshire.dao.ApplicantRepository;
import com.ea.expresshire.model.Applicant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.transaction.Transactional;
import java.util.List;
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
    @Transactional
    public void updateApplicant(Applicant applicant, Principal principal) {
        Applicant currentApplicant = applicantRepository.findByEmail(principal.getName());//this is just temporary.
                /*
                TODO: I should have a method called getCurrentUser, then I can get the
                current applicant using the userId of the current user. So, I should have another method
                called getCurrentApplicant which will call getCurrentUser.

                 */

        if(applicant.getFirstName() != null && !applicant.getFirstName().trim().equals("")) {
            currentApplicant.setFirstName(applicant.getFirstName().trim());
        }
        if(applicant.getLastName() != null && !applicant.getLastName().trim().equals("")) {
            currentApplicant.setLastName(applicant.getLastName().trim());
        }
        if(applicant.getPassword() != null && !applicant.getPassword().trim().equals("")) {
            currentApplicant.setPassword(applicant.getPassword());
        }

        //TODO: update email.
        applicantRepository.save(currentApplicant);
    }

    @Override
    public Applicant getApplicantByEmail(String email) {
        return  applicantRepository.findByEmail(email);
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
