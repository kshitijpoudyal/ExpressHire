package com.ea.expresshire.utilities;

import com.ea.expresshire.model.Admin;
import com.ea.expresshire.services.email.EmailService;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by kcp on 8/15/17.
 */
@Aspect
@Component
public class SendEmailAop {
    @Autowired
    EmailService emailService;

    @After("execution(* com.ea.expresshire.services.admin.AdminServiceImplementation.addAdmin(..)) && args(admin)")
    public void sendEmail(Admin admin){
        emailService.sendEmail(admin.getEmail(),"Greetings!","Welcome "+admin.getFullName()+" !!");
    }
}
