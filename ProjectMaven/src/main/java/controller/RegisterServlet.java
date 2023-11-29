package controller;


import model.utils.ConnectionUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterServlet extends HttpServlet {
    private static final long SERIAL_VERSION_UID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get information of user
        String fullName = req.getParameter("fullName");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // connect to db and execute to register sql
        Connection connection = null;
        PreparedStatement preState = null;

        try {
            connection = ConnectionUtils.getConnection();

            if (isUserExist(connection, phone)) {
                PrintWriter out = resp.getWriter();
                out.println("<html><body><p>Tên người dùng đã tồn tại. Vui lòng chọn tên khác.</p></body></html>");
                return;
            }

            String sqlQuery = "INSERT INTO shopquanao.users (fullName, phone, email, password) VALUES (?,?,?,?)";
            preState = connection.prepareStatement(sqlQuery);
            preState.setString(1, fullName);
            preState.setString(2, phone);
            preState.setString(3, email);
            preState.setString(4, password);

            int rows = preState.executeUpdate();
            if (rows > 0) {
                // register is successfull
                PrintWriter out = resp.getWriter();
                out.println("<html><body><p>Đăng ký thành công.</p></body></html>");
            } else {
                // register isn't successfull
                PrintWriter out = resp.getWriter();
                out.println("<html><body><p>Đăng ký không thành công. Vui lòng thử lại.</p></body></html>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // close all resources
            try {
                if (preState != null) preState.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private boolean isUserExist(Connection c, String phone) throws SQLException {
        String sqlQuery = "SELECT users.phone FROM shopquanao.users WHERE users.phone = ?";
        try (PreparedStatement preState = c.prepareStatement(sqlQuery)) {
            preState.setString(1, phone);
            try (ResultSet re = preState.executeQuery()) {
                return re.next();
            }
        }
    }
}
