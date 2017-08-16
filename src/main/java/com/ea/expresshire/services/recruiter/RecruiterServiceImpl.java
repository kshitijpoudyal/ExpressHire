package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.dao.RecruiterRepository;
import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Service
public class RecruiterServiceImpl implements RecruiterService {

    @Autowired
    RecruiterRepository recruiterRepository;

    @Override
    public void addNewRecruiter(Recruiter recruiter) {
        recruiterRepository.save(recruiter);
    }

    @Override
    public Recruiter findRecruiterById(long id) {
        //TODO: If we get a chance, I'll check if it is exist or not.
        Optional<Recruiter> optional = recruiterRepository.findById(id);
        return (optional.get());
    }

    @Override
    public Recruiter getRecruiterByEmail(String email) {
        return recruiterRepository.findByEmail(email);
    }

    @Override
    public void updateRecruiter(Recruiter recruiter, Principal principal) {
        Recruiter currentRecruiter = recruiterRepository.findByEmail(principal.getName());

        if(recruiter.getCompanyName() != null && !recruiter.getCompanyName().trim().equals("")) {
            currentRecruiter.setCompanyName(recruiter.getCompanyName().trim());
        }
        if(recruiter.getPassword() != null && !recruiter.getPassword().trim().equals("")) {
            currentRecruiter.setPassword(recruiter.getPassword());
        }
        recruiterRepository.save(currentRecruiter);
    }

    @Override
    public List<Recruiter> findRecruiters() {
        return recruiterRepository.findAll();
    }

    @Override
    public void deleteRecruiter(Recruiter recruiter) {
        recruiterRepository.delete(recruiter);
    }
}
