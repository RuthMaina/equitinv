/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

/**
 *
 * @author badyo
 *   private static String USER_NAME = "badyokita";  // GMail user name (just the part before "@gmail.com")
    private static String PASSWORD = "hawi12345"; // GMail password
    private static String RECIPIENT = "Bady.Okita@stratmore.edu";
 */

import javax.mail.*;
import javax.mail.internet.*;

import java.util.Properties;  
  
public class SendMailBySite {  
 public static void main(String[] args) {  
  
  String host="mail.lifestyleelectronics.co.ke";  
  final String user="info@lifestyleelectronics.co.ke";//change accordingly  
  final String password="TaK2s15fw8";//change accordingly  
    
  String to="bady.okita@strathmore.edu";//change accordingly  
  
   //Get the session object  
   Properties props = new Properties();  
   props.put("mail.smtp.host",host);  
   props.put("mail.smtp.auth", "true");  
     
   Session session = Session.getDefaultInstance(props,  
    new javax.mail.Authenticator() {  
      @Override
      protected PasswordAuthentication getPasswordAuthentication() {  
    return new PasswordAuthentication(user,password);  
      }  
    });  
  
   //Compose the message  
    try {  
     MimeMessage message = new MimeMessage(session);  
     message.setFrom(new InternetAddress(user));  
     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
     message.setSubject("javatpoint");  
     message.setText("This is simple program of sending email using JavaMail API");  
       
    //send the message  
     Transport.send(message);  
  
     System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {e.printStackTrace();}  
 }  
}  