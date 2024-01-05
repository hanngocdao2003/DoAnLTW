<%@ page import="bean.ProductResponse" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="View/styleWeb/styleDetails.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <link rel="stylesheet" href="View/styleWeb/styleButtonAdd.css">
    <script src="View/JSWeb/eventButtonAdd.js"></script>
    <link rel="stylesheet" href="Image/fontawesome/css/all.min.css">
    <link rel="icon" href="Image/logo/BHD-html.png" type="image/x-icon">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <script src="View/JSWeb/addPart.js"></script>
    <script src="View/JSWeb/JSDetails.js"></script>
    <title>Chi tiết đơn hàng</title>
</head>

<body>
<header>
    <div class="firstArea">
        <div class="logo_search_cart">
            <div class="logo">
                <img src="Image/logo/BHD-nền%20trong%20suốt.svg" alt="404">
                <h1>BHD Boutique</h1>
            </div>
            <div class="search_Category">
                <form class="Search" action="findProduct" method="get">
                    <input name="keyword" type="text" class="input_search" placeholder="Nhập sản phẩm cần tìm">
                    <button type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
            <a href="" class="cart"><i class="fa-solid fa-cart-shopping"></i></a>
            <a href="indexLogin.jsp" class="user"><i class="fa-solid fa-user"></i></a>
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
            </button>
            <ul class="Menupage">
                <a href="index.jsp" class="linkpage Home">
                    <li class="Item_menuPage">Trang chủ</li>
                </a>
                <a href="" class="linkpage Shop">
                    <li class="Item_menuPage ">Cửa hàng</li>
                </a>
                <a href="" class="linkpage Collection">
                    <li class="Item_menuPage ">Bộ sưu tập</li>
                </a>
                <a href="" class="linkpage Contact">
                    <li class="Item_menuPage">Liên hệ</li>
                </a>
                <a href="" class="linkpage Fashion">
                    <li class="Item_menuPage">Xu hướng thời trang</li>
                </a>
                <a href="" class="linkpage Comment">
                    <li class="Item_menuPage">Đóng góp ý kiến</li>
                </a>
            </ul>
        </div>
    </div>
</header>
<div class="container">
    <%
        ProductResponse p = (ProductResponse) request.getAttribute("productDetail");
        System.out.println(p);
        if (p != null) {
    %>
    <div class="img-product">
        <div class="mini-img-product">
            <img src="Image/Product/<%= p.getImage()%>" alt="">

        </div>
        <%}%>
        <div class="zoom-image-product">
            <img src="Image/Product/<%= p.getImage() %>" alt="">`
        </div>

    </div>

    <div class="text">
        <div class="information">
            <p class="name"><%=p.getName()%>
            </p>
            <div class="quantity">
                <div class="sale">
                    <p class="sub-sale">Đã bán: 65</p>
                </div>
                <div class="inventory">
                    <p class="sub-inventory">Còn lại: 134</p>
                </div>
            </div>
            <p class="price"><%=p.getPrice()%>
            </p>
            <p class="color" style="font-weight: bold;">Màu sắc:</p>
            <div class="color-btn" style="margin-bottom: 10px;">
                <%
                    String colors = p.getColor();
                    String[] arrColor = colors.split(",");
                    for (String c : arrColor) {
                %>
<%--                bị lỗi kệ nó, không sao hết nhé--%>
                <button id="btn-black" class="btn black" style="background-color: #<%=c.trim()%>;"></button>
                <%}%>
            </div>
            <p class="size" style="margin-bottom: 5px; font-weight: bold;">Kích thước:</p>
            <%
                String sizes = p.getSize();
                String[] arr = sizes.split(",");
                for (String size : arr) {
            %>
            <button class="size-btn s"><%=size.trim()%>
            </button>
            <%}%>
            <div class="add" style="margin-bottom: 10px;">
                <button class="add-pd"><i class="fa-solid fa-cart-shopping"
                                          style="color: #fff; margin-left: 5px;"></i>Thêm vào
                    giỏ hàng
                </button>
                <button class="buy-btn"><i class="fa-solid fa-bag-shopping"></i>Mua ngay</button>
            </div>
        </div>
        <hr style="margin-bottom: 20px;">
        <div class="feature"></div>
        <p style="font-weight: bold; margin-bottom: 5px;">Mô tả sản phẩm:</p>
        <%
            String dts = p.getDetails();
            String[] lDetail = dts.split(",");
            for (String s : lDetail) {
        %>
        <ul class="describe">
            <li class="describe-p"><%=s.trim()%>
            </li>
            <%--            <li class="describe-p">Màu sắc: Trắng/Đen/Hồng</li>--%>
            <%--            <li class="describe-p">Thiết kế và sản xuất: Miều Est.2013</li>--%>
            <%--            <li class="describe-p">Nơi sản xuất: Việt Nam</li>--%>
        </ul>
        <%}%>
        <hr style="margin-bottom: 20px;">
        <p style="font-weight: bold; margin-bottom: 5px;">Hướng dẫn sử dụng:</p>
        <ul class="use">
            <li>Giặt máy ở chế độ nhẹ, nhiệt độ thường.</li>
            <li>Không sử dụng hoá chất tẩy có chứa Clo.</li>
            <li>Phơi trong bóng mát.</li>
            <li>Sấy thùng, chế độ nhẹ nhàng.</li>
            <li>Là ở nhiệt độ trung bình 150 độ C.</li>
            <li>Giặt với sản phẩm cùng màu</li>
            <li>Không là lên chi tiết trang trí</li>
        </ul>
    </div>
    <%%>
</div>

<script>
    document.body.innerHTML += addFooter();
</script>

</body>

</html>