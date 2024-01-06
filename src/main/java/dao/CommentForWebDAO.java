package dao;

import database.ConnectionUtils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CommentForWebDAO {
    private static final String INSERT_COMMENT_SQL = "INSERT INTO comment_for_web(id_user, feedback, date_cmt) VALUES (?, ?, ?)";
    public boolean insertComment(int id_user, String feedback, Date date_cmt) {
        try (Connection connection = ConnectionUtils.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_COMMENT_SQL)) {
            preparedStatement.setInt(1, id_user);
            preparedStatement.setString(2, feedback);
            preparedStatement.setDate(3, date_cmt);

            preparedStatement.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
