package com.charvikent.lotusChocolates.config;

import java.io.File;
import java.io.StringWriter;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;


@Component
public class SendingMail {
	
	//private static final String SUBJECT_MAIL_TICKET_ISSUED = "Ticket Issued";
	
	@Autowired  
	private VelocityEngine velocityEngine; 

	@Autowired  
	private JavaMailSender javaMailSender; 
	/*@Autowired  
	private UserDao userDao;*/
	@Autowired
	HttpServletRequest request;
	@Autowired	FilesStuff filePath;
	
	
	//sending with attachment
	
	/*public void sendMailWithattachment(User user,File serverFile ) throws MessagingException {  
		try {
			
			String email = user.getEmail();
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			
			
			VelocityContext velocityContext = new VelocityContext();
			velocityContext.put("name",user.getUsername());
			
			StringWriter stringWriter = new StringWriter();
			velocityEngine.mergeTemplate("emailtemplate.vm", "UTF-8", velocityContext, stringWriter);
			helper.setText(stringWriter.toString(), true);
			helper.setTo( email);
		    helper.setSubject("Hi");
			//helper.addAttachment("file",serverFile);
			javaMailSender.send(message);
				
			
		} catch (MailException e) {
			e.printStackTrace();
			System.out.println(e);
		}  
	}
	*/
	
	public void sendSalesRequestEmailWithattachment(String emailId,MultipartFile[] files ) throws MessagingException {  
		try {
			
			VelocityContext velocityContext = new VelocityContext();
			
						
			String email =  emailId;
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			
			
			//VelocityContext velocityContext = new VelocityContext();
			//velocityContext.put("name",objuserBean.getFirstname());
			
			StringWriter stringWriter = new StringWriter();
			velocityEngine.mergeTemplate("RequestemailTemplate.vm", "UTF-8", velocityContext, stringWriter);
			helper.setText(stringWriter.toString(), true);
			helper.setTo( email);
		    helper.setSubject("Request submitted successfully");
		    
		    for(MultipartFile multipartFile : files) {
				String fileName = multipartFile.getOriginalFilename();
				if(!multipartFile.isEmpty())
				{
					FileSystemResource file = new FileSystemResource(filePath.makeDirectory() + File.separator + fileName);
					helper.addAttachment(file.getFilename(), file);
				}
				
			}
			
			javaMailSender.send(message);
				
			
		} catch (MailException e) {
			e.printStackTrace();
			System.out.println(e);
		}  
	}
	
	public void sendSalesRequestEmailWithMultipleAttachment(String emailId,MultipartFile[] files,VelocityContext velocityContext ) throws MessagingException {  
		try {
			
			
			String email =  emailId;
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			
			
			/*VelocityContext velocityContext = new VelocityContext();
			velocityContext.put("name",description);
			velocityContext.put("name",description);
			velocityContext.put("name",description);
			velocityContext.put("name",description);
			velocityContext.put("name",description);*/
			
			
			StringWriter stringWriter = new StringWriter();
			velocityEngine.mergeTemplate("emailtemplate.vm", "UTF-8", velocityContext, stringWriter);
			helper.setText(stringWriter.toString(), true);
			helper.setTo( email);
		    helper.setSubject("Lotus Chocolate Order");
		  		   
		   for(MultipartFile multipartFile : files) {
				String fileName = multipartFile.getOriginalFilename();
				if(!multipartFile.isEmpty())
				{
					FileSystemResource file = new FileSystemResource(filePath.makeDirectory() + File.separator + fileName);
					helper.addAttachment(file.getFilename(), file);
				}
				
			}
			javaMailSender.send(message);
			
			System.out.println("Mail Sent Success!;");
				
			
		} catch (MailException e) {
			e.printStackTrace();
			System.out.println(e);
		}  
	}
	
	
	
	/*public void sendUserConfirmationEmail(User user) throws MessagingException {  
		try {
			
			

			
			String email = user.getEmail();
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			
			
			VelocityContext velocityContext = new VelocityContext();
			velocityContext.put("name",user.getFirstname());
			velocityContext.put("mobilenumber",user.getMobilenumber());
			velocityContext.put("email",user.getEmail());
			velocityContext.put("password",user.getPassword());
			
			StringWriter stringWriter = new StringWriter();
			velocityEngine.mergeTemplate("emailtemplate.vm", "UTF-8", velocityContext, stringWriter);
			helper.setText(stringWriter.toString(), true);
			helper.setTo( email);
			helper.setSubject("Registration Successfully");  
			javaMailSender.send(message);
				
			
		} catch (MailException e) {
			e.printStackTrace();
			System.out.println(e);
		}  
	}
	*/
	
}
