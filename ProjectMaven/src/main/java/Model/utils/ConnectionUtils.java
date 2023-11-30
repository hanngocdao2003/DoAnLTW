package Model.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtils {
	private static final String url = "jdbc:mysql://localhost:3306/estatebasic";
	private static final String username = "root";
	private static final String password = "trantrantrantran";

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
