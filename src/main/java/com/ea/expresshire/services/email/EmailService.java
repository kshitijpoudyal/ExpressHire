package com.ea.expresshire.services.email;

public interface EmailService {

	public void sendEmail(String textMessage, String receiverEmail, String subject);

}
