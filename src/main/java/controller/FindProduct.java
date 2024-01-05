package controller;

import bean.ProductResponse;
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nameproduct");
//        System.out.println(name);
        // Gọi Service Layer
        ProductService productService = new ProductService();
        Map<String, String> searchParams = new HashMap<>();
        searchParams.put("name", name);
        List<ProductResponse> productList = productService.findProduct(searchParams);
        System.out.println(productList);

        //Đặt dữ liệu vào Request Attribute
        request.setAttribute("products", productList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("allProductofCategory.jsp");
        dispatcher.forward(request, response);
    }
}