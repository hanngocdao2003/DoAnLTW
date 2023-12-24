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
        sql.append("SELECT id, fullName, phone, email, password, status, roleId, birthday, province, district, ward, numHouse " + "from users where users.phone ='").append(numberPhone).append("'").append("and users.status = 1");


        try {
            Connection conn = ConnectionUtils.getConnection();
            PreparedStatement stmt = null;
            if (conn != null) {
                stmt = conn.prepareStatement(sql.toString());
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
                    userEntity.setBirthday(rs.getString("birthday"));
                    userEntity.setProvince(rs.getString("province"));
                    userEntity.setDistrict(rs.getString("district"));
                    userEntity.setWard(rs.getString("ward"));
                    userEntity.setNumHouse(rs.getString("numHouse"));
                    userEntityList.add(userEntity);
                }
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
        List<UserEntity> userEntityList = userDAO.getAccount("0901323070");
        System.out.println(toString(userEntityList));


    }
}
