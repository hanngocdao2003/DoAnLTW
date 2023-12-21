package controller;

import service.ProductResponse;
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
    String name = request.getParameter("product");
        ProductService productService = new ProductService();
        Map<String, String> searchParams = new HashMap<>();
        searchParams.put("name", name);
        List<ProductResponse> productList = productService.findAll(searchParams);
        System.out.println(productList);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }
}