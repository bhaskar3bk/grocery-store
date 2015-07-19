package com.grocery.store.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

	public static void sendEmail(String toAddress, int activationId) throws IOException {

		// Get a Properties object
		Properties props = System.getProperties();
		Properties prop = new Properties();

		System.out.println(new File(".").getAbsolutePath());
		InputStream inputStream = new FileInputStream("email.properties");

		prop.load(inputStream);

		props.setProperty(	"mail.smtp.host", 					"smtp.gmail.com");
		props.setProperty(	"mail.smtp.socketFactory.class",	"javax.net.ssl.SSLSocketFactory");
		props.setProperty(	"mail.smtp.socketFactory.fallback", "false");
		props.setProperty(	"mail.smtp.port", 					"465");
		props.setProperty(	"mail.smtp.socketFactory.port", 	"465");
		
		props.put(			"mail.smtp.auth", 					"true");
		props.put(			"mail.debug", 						"true");
		props.put(			"mail.store.protocol", 				"pop3");
		props.put(			"mail.transport.protocol", 			"smtp");
		
		final String username = "" + prop.getProperty("username");
		final String password = "" + prop.getProperty("password");
		
		try {
			Session session = Session.getDefaultInstance(props,
					new Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(username,
									password);
						}
					});

			// -- Create a new message --
			Message msg = new MimeMessage(session);

			// -- Set the FROM and TO fields --
			msg.setFrom(		new InternetAddress(""+ prop.getProperty("InternetAddress")));
			msg.setRecipients(	Message.RecipientType.TO,	InternetAddress.parse(toAddress, false));
			msg.setSubject(		"" + prop.getProperty("Subject"));
			msg.setText(		"" + prop.getProperty("Text") + activationId);
			msg.setSentDate(	new Date());
			
			Transport.send(msg);
			
			System.out.println("Message sent.");
		} catch (MessagingException e) {
			System.out.println("Error Occured: " + e);
		}
	}
}
