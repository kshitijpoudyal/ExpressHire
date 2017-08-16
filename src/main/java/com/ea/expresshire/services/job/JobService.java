package com.ea.expresshire.services.job;

import com.ea.expresshire.dao.JobRepository;
import com.ea.expresshire.model.Job;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.hibernate.exception.DataException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by kcp on 8/10/17.
 */
@Service
public class JobService {

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

    public List<Job> getValidJobs(){

        List<Job> listOfJobs=jobRepository.findAll();
        List<Job> validJobs=new ArrayList<>();

        for(Job e:listOfJobs){
            System.out.println(new GregorianCalendar().getTimeInMillis());
            if((int)new Date().getTime()<((int)e.getDateTime().getTime()+e.getDuration())){
                validJobs.add(e);

            }
        }

        return validJobs;
    }
}
