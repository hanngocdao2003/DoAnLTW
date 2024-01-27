package utils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.UUID;

public class EmailVerification {
    public static String generateToken() {
        return UUID.randomUUID().toString();
    }

    public static boolean sendVerificationEmail(String toMail, String token) {
        final String username = "cromeecs@gmail.com";
        final String password = "vqincsbglaaaemyp";

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toMail));
            message.setSubject("Xác thực tài khoản");
            message.setText("Xin chào,\n\nBạn đã đăng ký tài khoản thành công. Hãy click vào đường link sau để xác nhận tài khoản:\n"
                    + "http://localhost:8080/maven_war_exploded/verify?email=" + toMail + "&token=" + token);

            Transport.send(message);

            System.out.println("Email sent successfully.");
            return true;

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
