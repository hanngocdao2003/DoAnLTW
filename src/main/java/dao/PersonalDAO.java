package dao;

import bean.UserEntity;
import database.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonalDAO {
    public UserEntity loadInformation(String phone){
        UserEntity user = new UserEntity();
        String sql = "select fullName, phone, email, birthday, province, district, ward, numHouse from users where phone = "+ phone;
        try {
            Connection con = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                user.setFullName(rs.getString("fullName"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setBirthday(rs.getString("birthday"));
                user.setProvince(rs.getString("province"));
                user.setDistrict(rs.getString("district"));
                user.setWard(rs.getString("ward"));
                user.setNumHouse(rs.getString("numHouse"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return user;
    }

}
