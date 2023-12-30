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


    public boolean addUser(UserEntity user) {

        String query = "insert into shopquanao.users (fullName, phone, email, password) values (?,?,?,?)";
        try (Connection con = ConnectionUtils.getConnection()) {
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, user.getFullName());
            pst.setString(2, user.getPhone());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPassword());

            int row = pst.executeUpdate();

            return row > 0;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        return false;
    }

    public static boolean verifyUser(String phone) {
        String query = "update shopquanao.users set status = 1, roleId = 'R2' where phone = ?";
        try (Connection con = ConnectionUtils.getConnection();
             PreparedStatement pst = con.prepareStatement(query)) {

            pst.setString(1, phone);

            int row = pst.executeUpdate();

            return row > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        List<UserEntity> userEntityList = userDAO.getAccount("0901323080");
        System.out.println(toString(userEntityList));


    }
}
