package com;


import java.util.Properties;
 
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class SendMailTLS {
 
	public static String SendMail(String email,String id){
 
		final String username = "";
		final String password = "";
                                
                String s2=id;
                System.out.println("mailfid="+s2);
                System.out.println("mail email="+email);
                Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  }
                );
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(""));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("!! Key !!"+s2);
			message.setText(s2);
 
			Transport.send(message);
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			
			throw new RuntimeException(e);
			
		}
		return "done";
	}
}