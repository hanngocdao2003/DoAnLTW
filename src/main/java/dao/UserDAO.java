package dao;

import bean.UserEntity;
import database.ConnectionUtils;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    public void addUser(UserEntity user) {
        if (!isUserExist(user.getPhone())) {
            String queryInsert = "INSERT INTO shopquanao.users(fullName,phone,email,password) VALUES (?,?,?,?)";
            try (Connection c = ConnectionUtils.getConnection();
                 PreparedStatement preparedStatement = c.prepareStatement(queryInsert)) {
                preparedStatement.setString(1, user.getFullName());
                preparedStatement.setString(2, user.getPhone());
                preparedStatement.setString(3, user.getEmail());
                preparedStatement.setString(4, user.getPassword());
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.err.println("User existed");
        }
    }

    boolean isUserExist(String phone) {
        String sqlQuery = "SELECT users.phone FROM shopquanao.users WHERE users.phone = ?";
        try (Connection connection = ConnectionUtils.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery)) {
            preparedStatement.setString(1, phone);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next(); // return true if user existed
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}