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
import javax.swing.JOptionPane;
  
public class SendMailBySite { 
    public void SendSite(String from, String to, String pass,String subject,String body,String host)
    {
      
  final String user=from;//change accordingly  
  final String password=pass;//change accordingly  
   //TaK2s15fw8 
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
     message.setSubject(subject);  
     message.setText(body);  
       
    //send the message  
     Transport.send(message);  
  
     System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {
        JOptionPane.showMessageDialog(null, e);
     }  
    }
 public static void main(String[] args) {  
  
 }
}  