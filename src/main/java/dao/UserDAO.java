package dao;

import bean.UserEntity;
import database.ConnectionUtils;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public List<UserEntity> getAccount(String numberPhone) {
        List<UserEntity> userEntityList = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT users.id, users.fullName, users.phone, users.email, users.password, users.status, users.roleId from users where users.phone ='" + numberPhone + "'" +
                "and users.status = 1");
        try {
            Connection conn = ConnectionUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql.toString());
            ResultSet rs = stmt.executeQuery(sql.toString());
            while (rs.next()) {
                UserEntity userEntity = new UserEntity();
                userEntity.setId(rs.getInt("id"));
                userEntity.setFullName(rs.getString("fullName"));
                userEntity.setPhone(rs.getString("phone"));
                userEntity.setEmail(rs.getString("email"));
                userEntity.setPassword(rs.getString("password"));
                userEntity.setStatus(rs.getShort("status"));
                userEntity.setRoleId(rs.getString("roleId"));
                userEntityList.add(userEntity);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return userEntityList;
    }


    public static String toString(List<UserEntity> userEntityList) {
        String resutl = "";
        for (UserEntity userEntity : userEntityList) {
            resutl += userEntity;
        }
        return resutl;
    }

    public static void main(String[] args) {

       UserDAO userDAO = new UserDAO();
       List<UserEntity> userEntityList =  userDAO.getAccount("0901323080");
        System.out.println(userEntityList);

    }
}
