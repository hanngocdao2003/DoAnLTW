//package controller;
//
//import bean.ProductResponse;
//import service.ProductService;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//@WebServlet(name = "findProduct", value = "/findProduct")
//public class FindProduct extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String name = request.getParameter("nameproduct");
////        System.out.println(name);
//        // Gọi Service Layer
//        ProductService productService = new ProductService();
//        Map<String, String> searchParams = new HashMap<>();
//        searchParams.put("name", name);
//        List<ProductResponse> productList = productService.findProduct(searchParams);
//        System.out.println(productList);
//
//        //Đặt dữ liệu vào Request Attribute
//        request.setAttribute("products", productList);
//
//        RequestDispatcher dispatcher = request.getRequestDispatcher("allProductofCategory.jsp");
//        dispatcher.forward(request, response);
//    }
//}
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "findProduct", value = "/findProduct")
public class FindProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy tham số trang từ request
        String pageParam = request.getParameter("page");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;

        // Lấy tên sản phẩm từ request
        String name = request.getParameter("keyword"); //""

        // Gọi Service Layer để lấy danh sách sản phẩm theo tên
        ProductService productService = new ProductService();
        Map<String, String> searchParams = new HashMap<>();
        searchParams.put("name", name);
        List<ProductResponse> productList = new ArrayList<>();
      try{
          productList = productService.findProduct(searchParams);
      }catch (Exception e){
          System.out.println("error find products " + e.getMessage());
      }

        // Thực hiện phân trang
        int productsPerPage = 15;
        int startIndex = (currentPage - 1) * productsPerPage;
        int endIndex = Math.min(startIndex + productsPerPage, productList.size());
        List<ProductResponse> productsForPage = productList.subList(startIndex, endIndex);

        // Đặt dữ liệu vào Request Attribute
        request.setAttribute("products", productsForPage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", (int) Math.ceil((double) productList.size() / productsPerPage));

        RequestDispatcher dispatcher = request.getRequestDispatcher("allProductofCategory.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
