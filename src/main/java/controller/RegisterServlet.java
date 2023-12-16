
package controller;


import bean.UserEntity;
import dao.UserDAO;
import service.UserService;
import utils.EmailSender;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
    private static final long SERIAL_VERSION_UID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String ERROR = "indexLogin.jsp";
        final String SUCCESS = "indexLogin.jsp";
        resp.setContentType("text/html; charset=UTF-8");
        String url = ERROR;
        // get information of user
        String fullName = req.getParameter("fullName");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String btnRegister = req.getParameter("btnRegister");

        //check user
        if (UserService.checkRegister(phone, email)) {
       /*     // create object user
            UserEntity newUser = new UserEntity();
            newUser.setFullName(fullName);
            newUser.setPhone(phone);
            newUser.setEmail(email);
            newUser.setPassword(password);*/

            // send mail
            String recipientEmail = email;
            String verificationLink = "http://localhost:8080/maven/confirmation.html";
            EmailSender.sendVerificationEmail(recipientEmail, verificationLink);

            String successMessage = "Đăng ký thành công! Bạn có thể đăng nhập ngay bây giờ.";
            req.setAttribute("successMessage", successMessage);

            url = SUCCESS;
        } else {

        }
        req.getRequestDispatcher("indexLogin.jsp").forward(req, resp);
    }
}
