package controller;

import bean.UserEntity;
import dao.PersonalDAO;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Personal", value = "/Personal")
public class PersonalServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserEntity userEntity = (UserEntity) session.getAttribute("User_Login");

        // Kiểm tra nếu userEntity không null trước khi truy vấn database
        if (userEntity != null) {
            UserEntity loggedInUser = UserService.getUserByPhone(userEntity.getPhone());

            // Kiểm tra nếu loggedInUser không null trước khi đặt vào request
            if (loggedInUser != null) {
                request.setAttribute("loggedInUser", loggedInUser);

                // Sử dụng RequestDispatcher để chuyển hướng đến trang JSP
                RequestDispatcher dispatcher = request.getRequestDispatcher("/indexPersonal.jsp");
                dispatcher.forward(request, response);
                return;
            }
        }

        // Nếu có lỗi hoặc thông tin không tồn tại, bạn có thể chuyển hướng đến một trang lỗi
        response.sendRedirect("error.jsp");

    }

}



