package controller;

import service.UserService;
import utils.EmailVerification;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ForgetPasswordServlet", value = "/ForgetPasswordServlet")
public class ForgetPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getParameter("email");
        boolean checkEmail = UserService.checkEmail(email);

        response.setContentType("text/html; charset=UTF-8");
        if (checkEmail) {
            request.getRequestDispatcher("reset-password.jsp").forward(request, response);
            String code = EmailVerification.generateConfirmationCode();
            boolean sendSuccess = EmailVerification.sendConfirmationEmail(email, code);
            if (sendSuccess) {
                UserService.saveCode(email, code);
                new ResetPasswordServlet();
            }
        } else {
            request.setAttribute("fail", "Vui lòng nhập đúng email");
        }
    }
}
