package com.ea.expresshire.dao;

import com.ea.expresshire.model.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created by Raw on 8/11/2017.
 */
@Repository
public interface JobRepository extends JpaRepository<Job, Long> {
    Job findJobByTitle(String key);
}
