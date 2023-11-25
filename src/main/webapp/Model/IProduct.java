package WebsiteOfBHD.Model;

import java.util.List;
import java.util.Map;

import WebsiteOfBHD.Model.bean.ProductEntity;
// Tao đang thử lấy dữ liệu, đừng xóa.
public interface IProduct {
  List<ProductEntity> findAll(Map<String, String> search);
}
