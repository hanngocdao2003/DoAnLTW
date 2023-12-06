package dao;

import bean.ColorEntity;
import bean.ImageEntity;
import database.ConnectionUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ColorDAO {
    public static List<ColorEntity> findColor(String productId) {
        List<ColorEntity> colorEntities = new ArrayList<>();
        String sql = "SELECT color FROM colors WHERE productId = " + productId;
        try (Connection conn = ConnectionUtils.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql.toString())) {
            while (rs.next()) {
                ColorEntity colorEntity = new ColorEntity();
                colorEntity.getColor();
                colorEntities.add(colorEntity);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return colorEntities;
    }

}
