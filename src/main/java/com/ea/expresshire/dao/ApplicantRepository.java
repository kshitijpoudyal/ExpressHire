package com.ea.expresshire.dao;

import com.ea.expresshire.model.Applicant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApplicantRepository extends JpaRepository<Applicant, Long> {
}
