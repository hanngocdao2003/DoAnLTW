<%@ page import="service.ProductResponse" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="Image/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <link rel="stylesheet" href="View/styleWeb/styleHeader.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <link rel="icon" href="Image/logo/BHD-html.png" type="image/x-icon">
    <script src="View/JSWeb/code.jquery.com_jquery-3.7.1.min.js"></script>
    <script src="View/JSWeb/slick.min.js"></script>
    <script src="View/JSWeb/addPart.js"></script>
    <script src="View/JSWeb/JSHome.js"></script>
    <script src="View/JSWeb/slideShow.js"></script>
    <title>Bộ sưu tập</title>
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
<div class="SliderShow_Store">
    <div class="SlideList">
        <img src="Image/SlideStore/slide3.png" alt="">
        <img src="Image/SlideStore/slide2.png" alt="">
        <img src="Image/SlideStore/slide4.png" alt="">
        <img src="Image/SlideStore/slide1.png" alt="">
    </div>
</div>

    <div class="page1 page">
        <ul class="listItemProduct" id="allOfCategory">
            <%
                List<ProductResponse> productResponses = (List<ProductResponse>) request.getAttribute("products");
                if (productResponses != null) {
                    for (ProductResponse p : productResponses
                    ) {
            %>
            <li class="itemProduct">
                <img src="Image/Product/<%=p.getImage()%>" alt="" class="imageProduct">
                <a href="" class="linkProduct"><%=p.getName()%>
                </a>
                <div class="evalute"><span>Đánh giá: <ul class="fiveStar">
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
            </ul></span></div>
                <p class="priceProduct"><%=p.getPrice()%>
                </p>
            </li>
            <%
                    }
                }
            %>
        </ul>
    </div>

<script>
    document.body.innerHTML += addFooter();
</script>
</body>
</html>