package controller;

import service.ProductResponse;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "findProduct", value = "/findProduct")
public class FindProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("keyword");
        // System.out.println(name);
        // Bước 2: Gọi Service Layer
        ProductService productService = new ProductService();
        Map<String, String> searchParams = new HashMap<>();
        searchParams.put("name", name);
        List<ProductResponse> productList = productService.findAll(searchParams);
        System.out.println(productList);

        // Bước 4: Đặt dữ liệu vào Request Attribute
        request.setAttribute("products", productList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("allProductofCategory.html");
        dispatcher.forward(request, response);
    }
}