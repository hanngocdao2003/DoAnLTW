package dao;

import bean.ProductEntity;
import database.ConnectionUtils;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

//
public class ProductDAO {

    public static String searchWithoutJoin(Map<String, String> search) {
        StringBuilder sql = new StringBuilder();
        if (search.containsKey("name")) {
            String name = search.get("name");
            if (name != null && !name.isEmpty()) {
                sql.append("AND p.name LIKE '%" + name + "%' ");
            }
        }
        return sql.toString();
    }

    public static String searchWithJoin(Map<String, String> search) {
        StringBuilder sql = new StringBuilder();
        if (search.containsKey("category")) {
            String category = search.get("category");
            if (category != null && !category.isEmpty()) {
                sql.append("AND c.categoryName LIKE '%" + category + "%' ");
            }
        }
        return sql.toString();
    }

    public static ProductEntity getDetails(Integer productId) {
        List<ProductEntity> productEntities = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT p.id, p.name, p.price, p.details FROM shopquanao.products p ");
        sql.append("INNER JOIN shopquanao.category_details cd ON p.categoryId = cd.id\n"
                + "INNER JOIN shopquanao.categories c ON cd.categoryId = c.id\n");
        sql.append("WHERE 1 = 1 AND p.id = " + productId);
        try (Connection conn = ConnectionUtils.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql.toString())) {

            while (rs.next()) {
                ProductEntity productEntity = new ProductEntity();
                productEntity.setId(productId);
                productEntity.setName(rs.getString("name"));
                productEntity.setPrice(rs.getInt("price"));
                productEntity.setDetails(rs.getString("details"));
                productEntities.add(productEntity);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return productEntities.getFirst();
    }


    public static List<ProductEntity> findProduct(Map<String, String> search) {
        List<ProductEntity> productEntities = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT p.id, p.name, p.price, p.details FROM shopquanao.products p ");
        sql.append("INNER JOIN shopquanao.category_details cd ON p.categoryId = cd.id\n"
                + "INNER JOIN shopquanao.categories c ON cd.categoryId = c.id\n");
        sql.append("WHERE 1 = 1 "); // bắt buộc có WHERE 1 = 1
        sql.append(searchWithJoin(search));
        sql.append(searchWithoutJoin(search));
        sql.append("GROUP BY p.id");

        try (Connection conn = ConnectionUtils.getConnection();Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql.toString())) {

            while (rs.next()) {
                ProductEntity productEntity = new ProductEntity();
                productEntity.setId(rs.getInt("id"));
                productEntity.setName(rs.getString("name"));
                productEntity.setPrice(rs.getInt("price"));
                productEntity.setDetails(rs.getString("details"));
                productEntities.add(productEntity);
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return productEntities;
    }
}