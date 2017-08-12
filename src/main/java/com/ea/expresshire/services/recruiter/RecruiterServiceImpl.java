package com.ea.expresshire.services.recruiter;

import com.ea.expresshire.dao.RecruiterRepository;
import com.ea.expresshire.model.Recruiter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecruiterServiceImpl implements RecruiterService {

    @Autowired
    RecruiterRepository recruiterRepository;

    @Override
    public void addNewRecruiter(Recruiter recruiter) {
        recruiterRepository.save(recruiter);
    }
}
