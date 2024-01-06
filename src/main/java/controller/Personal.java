package controller;

import bean.UserEntity;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Personal", value = "/Personal")
public class Personal extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        // Gọi phương thức từ lớp service để kiểm tra đăng nhập và lấy thông tin người dùng
        UserEntity userEntity = UserService.checkLogin(userName, password);
        System.out.println(userEntity);
        if (userEntity != null) {
            // Lưu thông tin người dùng vào session
            HttpSession session = request.getSession(true);
            session.setAttribute("user", userEntity);
            request.getRequestDispatcher("indexPersonal.jsp").forward(request, response);
        } else {
            // Xử lý trường hợp khi userEntity là null
            request.setAttribute("Error", "Đăng nhập không thành công");
            request.getRequestDispatcher("indexLogin.jsp").forward(request, response);
        }
        }
}



