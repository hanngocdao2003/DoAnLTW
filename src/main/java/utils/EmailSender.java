package utils;


import javax.mail.Session;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailSender {
    private final static String HOST = "smtp.gmail.com";
    private final static String USERNAME = "cromeecs@gmail.com";
    private final static String PASSWORD = "ytrx svry rkun qois";

    public static void sendVerificationEmail(String recipientEmail, String verificationaLink) {
        // configure mail's attributes
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls", "true");
        properties.put("mail.smtp.host", HOST);
        properties.put("mail.smtp.port", "587");

        // create Session to create Message
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(USERNAME, PASSWORD);
            }
        });
        try {
            // create Message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(USERNAME));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject("XÁC THỰC TÀI KHOẢN");
            message.setText("Xin chào, \n\nHãy nhấp vào đường link sau để xác thực tài khoản:\n" + verificationaLink);

            // send mail
            Transport.send(message);
            System.out.println("Email sent successfully!");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
