package controller;

import bean.CommentReponse;
import service.CommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "uploadCmt", value = "/uploadCmt")
public class UploadComment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CommentService commentService = new CommentService();
        try {
            List<CommentReponse> comments = commentService.listCommentOfUser();

            // Đưa danh sách CommentReponse vào request attribute để sử dụng trong JSP
            req.setAttribute("comments", comments);

            // Chuyển hướng (forward) tới trang jsp để hiển thị dữ liệu
            req.getRequestDispatcher("indexAdmin.jsp").forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý lỗi nếu cần
        }
    }
}
