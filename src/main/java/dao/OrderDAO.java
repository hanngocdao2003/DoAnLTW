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

    public int getIdUser(String phone) {
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
        Connection con = ConnectionUtils.getConnection();
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, billEntity.getUserName());
            statement.setString(3, billEntity.getUserPhone());
            statement.setString(4, billEntity.getUserAddress());
            statement.setDate(5, billEntity.getDateCreated());
            statement.setString(6, billEntity.getNote());
            statement.setInt(7, billEntity.getUserId());
            statement.setString(8, "Chưa thanh toán");
            statement.setString(9, "Đang xác nhận");
            statement.setString(10, billEntity.getPaymentMethod());

            int row = statement.executeUpdate();
            return row > 0;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
