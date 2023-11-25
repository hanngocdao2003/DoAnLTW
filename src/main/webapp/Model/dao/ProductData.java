package WebsiteOfBHD.Model.dao;

import java.util.List;
import java.util.Map;

import WebsiteOfBHD.Model.IProduct;
import WebsiteOfBHD.Model.bean.ProductEntity;

public class ProductData implements IProduct{
  static final String url = "jdbc:mysql://localhost:3306/estatebasic";
	static final String username = "root";
	static final String password = "trantrantrantran";
  
  public String searchWithoutJoin(Map<String, String> search){
    StringBuilder sql = new StringBuilder();
    if (search.containsKey("name")) {
			String name = search.get("name");
			if (name != null && !name.isEmpty()) {
				sql.append("AND p.name LIKE '%" + name + "%' ");
			}
		}
    return sql.toString();
  }

  @Override
  public List<ProductEntity> findAll(Map<String, String> search) {
    List<ProductEntity> productEntities = new ArrayList<>();
    StringBuilder sql = new StringBuilder();
    sql.append("SELECT p.name , p.price FROM shopquanao.products p WHERE 1 = 1 ");
    sql.append(searchWithoutJoin(search));

    // try (Connection conn = DriverManager.getConnection(url, username, password);
		// 		Statement stmt = conn.createStatement();
		// 		ResultSet rs = stmt.executeQuery(sql.toString())) {

		// 	while (rs.next()) {
  }
  
}
