package controller;

import bean.InformationUser;
import service.InformationUserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
@WebServlet(name = "uploadInfUser", value = "/uploadInfUser")
public class UploadUserForAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        InformationUserService service = new InformationUserService();
        try {
            List<InformationUser> list = service.loadDataUser();
            session.setAttribute("listUser", list);
            for(InformationUser user : list){
                session.setAttribute("nameInfUSer", user.getName());
                session.setAttribute("emailInfUser", user.getEmail());
                session.setAttribute("phoneInfUser", user.getNumberphone());
                session.setAttribute("roleInfUser", user.getRole());
                session.setAttribute("statusInfUser", user.getStatus());
                req.getRequestDispatcher("ManagUser.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
