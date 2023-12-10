package controller;


import model.bean.UserEntity;
import model.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long SERIAL_VERSION_UID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get information of user
        String fullName = req.getParameter("fullName");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // create object user
        UserEntity newUser = new UserEntity();
        newUser.setFullName(fullName);
        newUser.setPhone(phone);
        newUser.setEmail(email);
        newUser.setPassword(password);

        // save information of user to db
        UserDao userDao = new UserDao();
        userDao.addUser(newUser);

        // reply to user
        resp.sendRedirect("indexLogin.jsp");
    }
}
