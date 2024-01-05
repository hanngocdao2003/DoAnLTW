package controller;

import bean.ProductResponse;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "detailsProduct", value = "/detailsProduct")
public class DetailsProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        ProductService productService = new ProductService();

        if (productId != null && !productId.isEmpty()) {

            ProductResponse productDetail = ProductService.getDetails(Integer.parseInt(productId));

            request.setAttribute("productDetail", productDetail);

            // Chuyển hướng đến trang chi tiết (Details.jsp)
            RequestDispatcher dispatcher = request.getRequestDispatcher("/details.jsp");
            dispatcher.forward(request, response);
        } else {
            // Xử lý khi productId không hợp lệ
            response.sendRedirect("error.jsp"); // Thay bằng trang lỗi mong muốn
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

//    private ProductResponse getProductDetail(String productId) {
//        // Gọi ProductService để lấy chi tiết sản phẩm
//        Map<String, String> search = new HashMap<>();
//        search.put("productId", productId);
//        List<ProductResponse> productDetails = ProductService.findProduct(search);
//
//        // Kiểm tra và trả về sản phẩm chi tiết (có thể cần xử lý nếu danh sách không rỗng)
//        return productDetails.isEmpty() ? null : productDetails.get(0);
//    }
}