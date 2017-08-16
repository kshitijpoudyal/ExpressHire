package com.ea.expresshire.utilities;
import com.ea.expresshire.model.Admin;
import com.ea.expresshire.model.Recruiter;
import com.ea.expresshire.services.email.EmailService;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * Created by Raw on 8/16/2017.
 */
@Aspect
@Component
public class sendNotification {
    @Autowired
    EmailService emailService;

    @After("execution(* com.ea.expresshire.services.job.JobService.saveJob(..)) && args(recruiter)")
    public void sendEmail(Recruiter recruiter){
        emailService.sendEmail(recruiter.getEmail(),"Congratulations!!","Succesfully Added"+recruiter.getName()+" !!");
    }
}
