package com.ea.expresshire.services.email;

import com.ea.expresshire.services.email.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
//@Service
//public class EmailServiceImpl implements EmailService {
//
//    @Autowired
//    private JavaMailSender mailSender;
//
//    @Override
//    public void sendEmail(String textMessage, String receiverEmail, String subject) {
//        MimeMessagePreparator mimeMessagePreparator = new MimeMessagePreparator() {
//            @Override
//            public void prepare(MimeMessage mimeMessage) throws Exception {
//                MimeMessageHelper email = new MimeMessageHelper(mimeMessage);
//                email.setTo(receiverEmail);
//                email.setSubject(subject);
//                email.setText(textMessage, true);
//                email.setFrom(new InternetAddress("test.general.email@gmail.com"));
//            }
//        };
//
//        mailSender.send(mimeMessagePreparator);
//    }
//}