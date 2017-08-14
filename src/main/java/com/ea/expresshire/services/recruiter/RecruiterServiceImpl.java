package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.dao.RecruiterRepository;
import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public void updateRecruiter(Recruiter recruiter) {
        Recruiter currentRecruiter = new Recruiter();//this is just temporary.
                /*
                TODO: I should have a method called getCurrentUser, then I can get the
                current recruiter using the userId of the current user. So, I should have another method
                called getCurrentRecruiter which will call getCurrentUser.

                 */
        //TODO: may be I have to check if they are empty or not. I have to see the values using debugger.
        if(recruiter.getCompanyName() != null) {
            currentRecruiter.setCompanyName(recruiter.getCompanyName());
        }
        if(recruiter.getEmail() != null) {
            currentRecruiter.setEmail(recruiter.getEmail());
        }
        if(recruiter.getPassword() != null) {
            currentRecruiter.setPassword(recruiter.getPassword());
        }

        recruiterRepository.save(currentRecruiter);
    }
}
