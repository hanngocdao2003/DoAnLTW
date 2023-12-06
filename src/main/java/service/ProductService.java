package service;
import bean.ColorEntity;
import bean.ImageEntity;
import bean.ProductEntity;
import dao.ColorDAO;
import dao.ImageDAO;
import dao.ProductDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductService {
    public List<ProductResponse> findAll(Map<String, String> search) {
        List<ProductEntity> productEntities = ProductDAO.findAll(search);
        List<ProductResponse> result = new ArrayList<>();
        for (ProductEntity item : productEntities) {
            String productId = item.getId();
            ProductResponse productResponse = new ProductResponse();
            ImageDAO imageDAO = new ImageDAO();
            List<ImageEntity> imageEntities = imageDAO.findImage(productId);
            if (imageEntities.isEmpty()) {
                break;
            }
            ColorDAO colorDAO = new ColorDAO();
            List<ColorEntity> colorEntities = colorDAO.findColor(productId);
            productResponse.setName(item.getName());
            productResponse.setPrice(item.getPrice());
            productResponse.setDetails(item.getDetails());
            System.out.println(imageEntities);
            productResponse.setImage(imageEntities.getFirst().getLink());
            //dùng feature java 8 để lấy list màu
            String color = colorEntities.stream().map(colors -> colors.getColor()).collect(Collectors.joining(", "));
            productResponse.setColor(color);
            result.add(productResponse);
        }
        return result;
    }
}
