import bean.ProductEntity;
import dao.ProductDAO;
import service.ProductResponse;
import service.ProductService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestProduct {
    public static void main(String[] args) {
        // Create a search map with the product ID "PD1"
        Map<String, String> search = Map.of("productId", "PD1");

        // Call the findAll method from ProductService
        List<ProductResponse> products = ProductService.findAll(search);

        // Check if any products were found
        if (!products.isEmpty()) {
            // Print the details of the first product (assuming PD1 returns only one product)
            ProductResponse product = products.get(0);
            System.out.println("Product Name: " + product.getName());
            System.out.println("Price: " + product.getPrice());
            System.out.println("Details: " + product.getDetails());
            System.out.println("Image: " + product.getImage());
            System.out.println("Color(s): " + product.getColor());
            // Print size(s) if available
            if (!product.getSize().isEmpty()) {
                System.out.println("Size(s): " + product.getSize());
            }
        } else {
            System.out.println("No product found with ID PD1");
        }
    }
}

