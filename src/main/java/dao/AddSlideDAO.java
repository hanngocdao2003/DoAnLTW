package dao;

import database.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddSlideDAO {

    private static final String INSERT_SLIDE_SQL = "INSERT INTO image_slideshow(name, data) VALUES (?, ?)";


    public boolean insertSlide(String name, byte[] data) {
        insertData(INSERT_SLIDE_SQL, name, data);
        return true;
    }

    private boolean insertData(String sql, String name, byte[] data) {
        try (Connection connection = ConnectionUtils.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, name);
            preparedStatement.setBytes(2, data);

            preparedStatement.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
