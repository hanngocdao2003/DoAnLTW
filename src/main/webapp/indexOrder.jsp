<%@ page import="bean.ProductResponse" %>

<%@ page import="bean.ShoppingCart" %>
<%@ page import="bean.CartProduct" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="service.ProductService" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="View/JSWeb/code.jquery.com_jquery-3.7.1.min.js">
    <link rel="stylesheet" href="View/styleWeb/styleHeader.css">
    <link rel="stylesheet" href="View/styleWeb/styleOrder.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <link rel="stylesheet" href="View/styleWeb/styleButtonAdd.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <link rel="stylesheet" href="Image/fontawesome-free-6.4.2-web/css/all.min.css">
    <script src="View/JSWeb/eventAddProduct.js"></script>
    <link rel="icon" href="Image/BHD-html.png" type="image/x-icon">
    <script src="View/JSWeb/addPart.js"></script>
    <title>Đơn hàng</title>
</head>
<body>
<header>

    <%
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        if (cart == null) {
            cart = new ShoppingCart();
        }
    %>

    <div class="firstArea">
        <div class="logo_search_cart">
            <a href="index.jsp" class="logo">
                <img src="Image/logo/BHD-nền%20trong%20suốt.svg" alt="404">
                <h1>BHD Boutique</h1>
            </a>
            <div class="search_Category">
                <form class="Search" action="Product" method="get">
                    <input name="keyword" type="text" class="input_search" placeholder="Nhập sản phẩm cần tìm">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
            <div class="rightIcon">
                <a href="indexOrder.jsp" class="cartHeader"><i class="fa-solid fa-cart-shopping"></i><span id="totalitem"
                                                                                                           style="color: var(--but)">
                             <%
                                 Object idUser = request.getSession().getAttribute("Id");
                                 if (idUser != null) {
                                     int id = (Integer) idUser;
                             %>
                            <%= cart.getTotalItem(id) %>
                                <%}%>
                        </span></a>
                <%
                    String success = (String) session.getAttribute("Success");
                    String roleID = (String) session.getAttribute("Role");
                    System.out.println(success);
                    System.out.println(roleID);
                    if (success != null && "R1".equals(roleID)) {
                %>
                <a href="indexAdmin.jsp" class="user"><i class="fa-solid fa-user"
                                                         style="margin-right: 5px"></i> <%= success %>
                </a>
                <%
                } else if (success != null) {
                %>
                <a href="indexPersonal.jsp" class="user"><i class="fa-solid fa-user"
                                                            style="margin-right: 5px"></i> <%= success %>
                </a>
                <%
                } else {
                %>
                <a href="indexLogin.jsp" class="user"><i class="fa-solid fa-user"></i></a>
                <%
                    }
                %>
            </div>
        </div>
    </div>
    <div class="menu_container">
        <div class="task_menu">
            <button class="btn_Category_search" id="btn_Category_search">
                    <span>
                        Danh mục
                    </span>
                <i class="fa-solid fa-angle-down"></i>
                <ul class="menu_Category" id="menu_Category">
                    <a>
                        <li class="menu_Category_Item">Tất cả sản phẩm</li>
                    </a>
                    <a>
                        <li class="menu_Category_Item">Áo</li>
                    </a>
                    <a>
                        <li class="menu_Category_Item">Áo khoác</li>
                    </a>
                    <a>
                        <li class="menu_Category_Item">Quần</li>
                    </a>
                    <a>
                        <li class="menu_Category_Item">Đầm</li>
                    </a>
                    <a>
                        <li class="menu_Category_Item">Váy</li>
                    </a>
                </ul>
                <form id="productSearchForm" action="findProduct" method="get">
                    <input type="hidden" name="nameproduct" id="categoryInput"/>
                </form>
            </button>
            <ul class="Menupage">
                <a href="index.html" class="linkpage Home">
                    <li class="Item_menuPage">Trang chủ</li>
                </a>
                <a href="" class="linkpage Shop">
                    <li class="Item_menuPage ">Cửa hàng</li>
                </a>
                <a href="collection.jsp" class="linkpage Collection">
                    <li class="Item_menuPage ">Bộ sưu tập</li>
                </a>
                <a href="#" class="linkpage Contact" id="Contact">
                    <li class="Item_menuPage" id="Contact_Us">Liên hệ</li>
                </a>
                <a href="" class="linkpage Fashion">
                    <li class="Item_menuPage">Xu hướng thời trang</li>
                </a>
                <a href="comment.jsp" class="linkpage Comment">
                    <li class="Item_menuPage">Đóng góp ý kiến</li>
                </a>
            </ul>
        </div>
    </div>
</header>
<form action="OrderServlet" method="post">
    <div class="cart">
        <div class="container-choose">
            <div class="information-cus">
                <h1>Thông tin vận chuyển</h1>
                <%
                    String fail = (String) request.getAttribute("null1");
                    if (fail != null) {
                %>
                <span><%= fail%></span>
                <%}%>
                <div class="name-phone">
                    <input type="text" placeholder="Họ và tên" name="fullName" required>
                    <input type="text" placeholder="Số điện thoại" name="phone" required>
                </div>
                <input type="text" placeholder="Email" name="email" required>
                <input type="text " placeholder="Địa chỉ" name="address" required>
                <input type="text" placeholder="Ghi chú (VD: giao sau 10h)" name="note">
            </div>
            <div class="payment">
                <h1>Hình thức thanh toán</h1>
                <div class="cod">
                    <input type="radio" name="choose" value="cod">
                    <img src="Image/cart/COD.png" alt="">
                    <p>COD <br>Thanh toán khi nhận hàng</p>
                </div>
                <div class="momo">
                    <input type="radio" name="choose" value="momo">
                    <img src="Image/cart/momo.png" alt="">
                    <p>Thanh toán MoMo</p>
                </div>
                <div class="zalo-pay">
                    <input type="radio" name="choose" value="zalo">
                    <img src="Image/cart/zalopay.png" alt="">
                    <p>Thanh toán ZaloPay</p>
                </div>
                <div class="vn-pay">
                    <input type="radio" name="choose" value="card">
                    <img src="Image/cart/Vnpay.png" alt="">
                    <p>Thẻ ATM / Thẻ tín dụng (Credit card) / Thẻ ghi nợ (Debit card)</p>
                </div>
                <%
                    String fail1 = (String) request.getAttribute("null");
                    if (fail1 != null) {
                %>
                <span><%= fail1%></span>
                <%}%>
                <div class="notification">
                    <span>Bạn chấp nhận thanh toán bằng COD</span>
                </div>
            </div>
        </div>
        <div class="straight-line"></div>
        <div class="cart-details">
            <h1>Đơn hàng</h1>
            <%
                ProductResponse p = (ProductResponse) request.getAttribute("productDetail");
                System.out.println(p);
                if (p != null) {%>
            <div class="product">
                <img src="<%=p.getImage()%>" alt="">
                <div class="details">
                    <h3><%=p.getName()%>
                    </h3>
                    <div class="choose">
                        <select name="color" id="colour" style="margin-right: 20px">
                            <option>Đen</option>
                            <option>Trắng</option>
                            <option>Hồng</option>
                        </select>
                        <select name="size" id="size">
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                        </select>
                    </div>
                    <div class="cost">
                        <span id="total" style="font-size: 30px"><%=p.getPrice()%></span>
                        <span id="quantity">Số lượng: <span> 2</span></span>
                    </div>
                    <button id="removeBtn"><i class="fa-regular fa-trash-can" style="color: #ffffff;"></i>Xóa sản phẩm
                    </button>
                </div>
            </div>
            <%}%>
            <hr>
            <%--        <div class="voucher">--%>
            <%--            <div class="ten-percent">--%>
            <%--                <p>Mã giảm giá</p>--%>
            <%--                <p>Giảm 10% cho đơn hàng từ 399k</p>--%>
            <%--                <button>Áp dụng</button>--%>
            <%--            </div>--%>
            <%--        </div>--%>
            <hr>
            <div class="detail-cost">
                <div class="price">
                    <p class="lable">Tạm tính</p>
                    <p class="cost">290.000đ</p>
                </div>
                <div class="sale-off">
                    <p clss="lable">Giảm giá</p>
                    <p class="cost">0đ</p>
                </div>
                <div class="delivery-cost">
                    <p class="lable">Phí giao hàng</p>
                    <p class="cost">Miễn phí</p>
                </div>
            </div>
            <hr>
            <div class="total-cost">
                <p class="label">Tổng</p>
                <p class="cost">290.000đ</p>
            </div>
            <div id="accept_pay">
                <button>Chấp nhận thanh toán</button>
            </div>
        </div>
    </div>
</form>
<script>
    document.body.innerHTML += addFooter();
    $('#removeBtn').click(function (e) {
        e.preventDefault();
        var productId = $(this).closest('.product').find('input[name="productId"]').val();
        var quantity = $(this).closest('.product').find('input[name="quantity"]').val();
        if (quantity > 1) {
            $(this).closest('.product').find('input[name="quantity"]').val(parseInt(quantity) - 1);
        } else {
            $(this).closest('.product').remove();
        }
    })
</script>
</body>
</html>