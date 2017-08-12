package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.dao.RecruiterRepository;
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
}
