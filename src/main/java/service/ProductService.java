package service;

import bean.ColorEntity;
import bean.ImageEntity;
import bean.ProductEntity;
import bean.SizeEntity;
import dao.ColorDAO;
import dao.ImageDAO;
import dao.ProductDAO;
import dao.SizeDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductService {
    public static List<ProductResponse> findAll(Map<String, String> search) {
        List<ProductEntity> productEntities = ProductDAO.findAll(search);
        System.out.println(productEntities.size());
        List<ProductResponse> result = new ArrayList<>();
        for (ProductEntity item : productEntities) {
            String productId = item.getId();
            ProductResponse productResponse = new ProductResponse();
            ImageDAO imageDAO = new ImageDAO();
            List<ImageEntity> imageEntities = imageDAO.findImage(productId);
            if (imageEntities.isEmpty()) {
                continue;
            }
            //Khởi tạo đối tượng ColorDAO
            ColorDAO colorDAO = new ColorDAO();
            List<ColorEntity> colorEntities = colorDAO.findColor(productId);
            //Khởi tạo đối tượng SizeDAO
            SizeDAO sizeDAO = new SizeDAO();
            List<SizeEntity> sizeEntities = sizeDAO.findSize(productId);
            productResponse.setName(item.getName());
            productResponse.setPrice(item.getPrice());
            productResponse.setDetails(item.getDetails());
            productResponse.setImage(imageEntities.getFirst().getLink());

            //dùng feature java 8 để lấy list màu, size
            String color = colorEntities.stream().map(colors -> colors.getCode()).collect(Collectors.joining(", "));
            String size = sizeEntities.stream().map(sizes -> sizes.getSize()).collect(Collectors.joining(", "));
            String image = imageEntities.stream().map(img -> img.getLink()).collect(Collectors.joining(", "));
            productResponse.setImage(image);
            productResponse.setColor(color);
            productResponse.setSize(size);
            result.add(productResponse) ;// Thêm các đối tượng productResponse vào list
        }
        System.out.println(result.size());
        return result;
    }
}

