package model.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtils {
    static final String url = "jdbc:mysql://localhost:3306/shopquanao";
    static final String username = "root";
    static final String password = "tudyrose2003";

    public static final Connection getConnection() {
        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            return connection;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
