import model.bean.ProductEntity;
import model.dao.ProductDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestProduct {
    public static void main(String[] args) {
        // Tạo một đối tượng ProductData
        ProductDao productData = new ProductDao();

        // Tạo một Map để chứa các thông tin tìm kiếm (nếu cần)
        Map<String, String> searchParams = new HashMap<>();

        // Gọi phương thức findAll để lấy danh sách sản phẩm
        List<ProductEntity> productList = productData.findAll(searchParams);

        // In ra thông tin sản phẩm
        for (ProductEntity product : productList) {
            System.out.println("Tên sản phẩm: " + product.getName());
            System.out.println("Đơn giá: " + product.getPrice());
            System.out.println("------------------------");
        }
    }
}
