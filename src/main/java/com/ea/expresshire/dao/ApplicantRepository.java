package com.ea.expresshire.dao;

import com.ea.expresshire.model.Applicant;
import com.ea.expresshire.model.Recruiter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApplicantRepository extends JpaRepository<Applicant, Long> {
    Applicant findByEmail(String email);
}
