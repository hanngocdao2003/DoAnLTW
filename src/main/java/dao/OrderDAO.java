package dao;

import bean.BillEntity;
import bean.UserEntity;
import database.ConnectionUtils;
import utils.FormatUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDAO {

    private int getIdUser(String phone) {
        UserEntity user = new UserEntity();
        String sql = "select id from users where phone = ?";
        Connection con = ConnectionUtils.getConnection();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, phone);

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                user.setId(rs.getInt("id"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user.getId();
    }

    public boolean addBill(BillEntity billEntity) {
        String sql = "insert into bills(id,userName,userPhone,userAddress,dateCreated,note,userId,statusPayment,statusOrder,paymentMethod) values (?,?,?,?,?,?,?,?,?,?)";
        String id = FormatUtils.generateOrderId();


        return false;
    }
}
