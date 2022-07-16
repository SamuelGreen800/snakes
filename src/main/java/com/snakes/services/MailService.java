package com.snakes.services;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class MailService {

    public static void sendEmail(Session session, String toEmail, String name, String subject, String body){
        try
        {
            MimeMessage msg = new MimeMessage(session);
            //set message headers
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");
            String composedMessage = String.format("Name: %s |||  Subject: %s  ||| Message: %s", name, subject, body);

            msg.setFrom(new InternetAddress("no_reply@Gilboa.com", "no_reply@Gilboa.com"));

            msg.setReplyTo(InternetAddress.parse("no_reply@Gilboa.com", false));

            msg.setSubject(subject, "UTF-8");

            msg.setText(composedMessage, "UTF-8");

            msg.setSentDate(new Date());

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
            System.out.println("Message is ready");
            Transport.send(msg);

            System.out.println("EMail Sent Successfully!!");
        }
        catch (Exception e) {
            e.printStackTrace();
        }


    }

    //Validação de email via regex
    public static boolean valEmail(String input){
        String emailRegex = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
        Pattern EmailPat = Pattern.compile(emailRegex, Pattern.CASE_INSENSITIVE);
        Matcher matcher = EmailPat.matcher(input);
        return matcher.find();
    }
}