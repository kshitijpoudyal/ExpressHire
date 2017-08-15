package com.ea.expresshire.services.job;

import com.ea.expresshire.dao.JobRepository;
import com.ea.expresshire.model.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kcp on 8/10/17.
 */
@Service
public class JobService{

    @Autowired
    private JobRepository jobRepository;

    public void saveJob(Job job){
        jobRepository.save(job);
    }

    public List<Job> getJobs(){
        return jobRepository.findAll();
    }

    public void deleteJob(Long id){
        jobRepository.deleteById(id);
    }

    public Job getJob(long id){
        return jobRepository.getOne(id);
    }

    public Job searchJob(String key){
        return jobRepository.findJobByTitle(key);
    }
}
