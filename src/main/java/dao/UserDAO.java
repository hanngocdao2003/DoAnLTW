package dao;

import bean.UserEntity;
import database.ConnectionUtils;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    /*public List<> checkLogin(String user, String pass)  throws SQLException, Exception{
            connect = ConnectionUtils.getConnection();
            if(connect != null){
                String query = "select users.phone, users.password from users where users.phone = ? and users.password = ?;";
                statement = connect.prepareStatement(query);
                statement.setString(2, pass);
                result = statement.executeQuery();
                while (result.next()){
                    login = new Login(result.getString(1), result.getString(2));
                    return  login;
                }
            }


        return login;
    }*/
    public List<UserEntity> getAccount(String numberPhone) {
        List<UserEntity> userEntityList = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("select users.phone, users.password from users where users.phone ='" + numberPhone + "'" +
                "and users.status = 1");


        try {
            Connection conn = ConnectionUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql.toString());
            ResultSet rs = stmt.executeQuery(sql.toString());
            while (rs.next()) {
                UserEntity userEntity = new UserEntity();
                userEntity.setPhone(rs.getString("phone"));
                userEntity.setPassword(rs.getString("password"));
                userEntityList.add(userEntity);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return  userEntityList;
    }

    public static void main(String[] args) {
       UserDAO userDAO = new UserDAO();
       List<UserEntity> userEntityList =  userDAO.getAccount("0901323080");
        System.out.println(userEntityList);
    }
}
