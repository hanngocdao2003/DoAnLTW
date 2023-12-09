/*
package controller;


import bean.UserEntity;
import dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Register")
public class Register extends HttpServlet {
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
        UserDAO userDAO = new UserDAO();
        userDAO.addUser(newUser);
<<<<<<<< HEAD:src/main/java/controller/Register.java

========
>>>>>>>> fb28bd08c089163e75bd0f3798cac47b3f28447b:src/main/java/controller/RegisterServlet.java

        // reply to user
        resp.getWriter().println("Register successfully for" + fullName);
    }
<<<<<<<< HEAD:src/main/java/controller/Register.java
}*/
// ========
// }
// >>>>>>>> fb28bd08c089163e75bd0f3798cac47b3f28447b:src/main/java/controller/RegisterServlet.java
