package com.snakes.controllers;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.snakes.models.MailModel;
import com.snakes.services.MailService;

@Controller
public class MailController extends MailService {
	
	
	

    @GetMapping("/contact")
    public String emailForm(@ModelAttribute("mail") MailModel mail, Model model){
        MailModel newMail = new MailModel();
        model.addAttribute("mail", newMail);
        return "contactUs.jsp";
    }


	


    @PostMapping("/contact/email")
    public String sendEmail(@ModelAttribute  MailModel mail, Model model) {
        final String fromEmail = "SnakePage87@gmail.com";
        final String password = "ykujltdgpfptrjwh";

        System.out.println(MailService.valEmail(mail.getEmail()));




             if (valEmail(mail.getEmail()) == false) {
                 System.out.println("invalid email address");
                 model.addAttribute("error", "Invalid email");
                 return "emailForm.jsp";
             } else {

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
            props.put("mail.smtp.port", "587"); //TLS Port
            props.put("mail.smtp.auth", "true"); //enable authentication
            props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS

            Authenticator auth = new Authenticator() {
                //override the getPasswordAuthentication method
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            };
            Session session = Session.getInstance(props, auth);


            MailService.sendEmail(session, mail.getEmail(), mail.getName(), mail.getSubject(), mail.getMessage());

            return"redirect:/sales" ;
            }

    }
}