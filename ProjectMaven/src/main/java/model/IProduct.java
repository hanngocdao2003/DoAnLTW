package model;

import model.bean.ProductEntity;

import java.util.List;
import java.util.Map;

// Tao đang thử lấy dữ liệu, đừng xóa.
public interface IProduct {
  List<ProductEntity> findAll(Map<String, String> search);
}
