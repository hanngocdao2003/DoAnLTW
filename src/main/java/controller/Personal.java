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
        HttpSession session = request.getSession(true);

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String numHouse = request.getParameter("numHouse");
        UserEntity userEntity =  UserService.checkLogin(userName, password);
        if (userEntity == null){
            request.setAttribute("Error", "Đăng nhập");
            request.getRequestDispatcher("indexLogin.jsp").forward(request, response);
        }else {
                request.setAttribute("fullName", userEntity.getFullName());
                request.setAttribute("numberPhone", userEntity.getPhone());
                request.setAttribute("email", userEntity.getEmail());
                request.setAttribute("birthday", userEntity.getBirthday());
                request.setAttribute("province", userEntity.getProvince());
                request.setAttribute("district", userEntity.getDistrict());
                request.setAttribute("ward", userEntity.getWard());
                request.setAttribute("numHouse", userEntity.getNumHouse());
                request.getRequestDispatcher("indexPersonal.jsp").forward(request, response);

        }


    }

    public static void main(String[] args) {
        System.out.println(new Personal());
    }



}
