package model.dao;

import model.IProduct;
import model.bean.ProductEntity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
//
public class ProductData implements IProduct {
	static final String url = "jdbc:mysql://localhost:3306/shopquanao";
	static final String username = "root";
	static final String password = "trantrantrantran";

//    public String searchWithoutJoin(Map<String, String> search) {
//        StringBuilder sql = new StringBuilder();
//        if (search.containsKey("name")) {
//            String name = search.get("name");
//            if (name != null && !name.isEmpty()) {
//                sql.append("AND p.name LIKE '%" + "Áo Len" + "%' ");
//                /*"Áo len" trong câu trên chỉ là cái để test mẫu,
//                * Câu đúng nên là sql.append("AND p.name LIKE '%" + name + "%' ");*/
//            }
//        }
//        return sql.toString();
//    }

    public String searchWithJoin(Map<String, String> search) {
        StringBuilder sql = new StringBuilder();
//        if (search.containsKey("category")) {
//            String category = search.get("category");
//            if (category != null && !category.isEmpty()) {
                sql.append("AND c.categoryName LIKE '%Quần%'");
//            }
//        }
        return sql.toString();
    }

	@Override
	public List<ProductEntity> findAll(Map<String, String> search) {
		List<ProductEntity> productEntities = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT p.name , p.price FROM shopquanao.products p ");
//        if (search.containsKey("category")) {
		sql.append("INNER JOIN shopquanao.category_details cd ON p.categoryId = cd.id\n"
				+ "INNER JOIN shopquanao.categories c ON cd.categoryId = c.id ");
//        }
		// sql.append(searchWithoutJoin(search));
       
		sql.append("WHERE 1 = 1 "); // bắt buộc có WHERE 1 = 1
		sql.append(searchWithJoin(search));
		sql.append("GROUP BY p.name");

		try (Connection conn = DriverManager.getConnection(url, username, password);
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql.toString())) {

			while (rs.next()) {
				ProductEntity productEntity = new ProductEntity();
				productEntity.setName(rs.getString("name"));
				productEntity.setPrice(rs.getInt("price"));
				productEntities.add(productEntity);
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return productEntities;
	}
}
