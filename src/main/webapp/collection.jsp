<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.ShoppingCart" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="View/styleWeb/styleHeader.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <link rel="stylesheet" href="Image/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="View/styleWeb/styleCollection.css">
    <script src="View/JSWeb/addPart.js"></script>
    <script src="View/JSWeb/code.jquery.com_jquery-3.7.1.min.js"></script>
    <script src="View/JSWeb/slick.min.js"></script>
    <script src="View/JSWeb/slideShow.js"></script>
    <script src="View/JSWeb/JSHome.js"></script>
    <link rel="stylesheet" href="View/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <script src="View/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="View/styleWeb/returnBootstrap.css">
    <title>Bộ sưu tập</title>
</head>
<body>
<header>
    <%
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        if(cart == null) {
            cart = new ShoppingCart();
        }
    %>
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
            <a href="indexOrder.jsp" class="cartHeader"><i class="fa-solid fa-cart-shopping"></i><span id="totalitem" style="color: var(--but)">
                            <%= cart.getTotalItem() %>
                        </span></a>
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
    <div class="SliderShow_Store">
        <div class="SlideList">
            <img src="Image/SlideStore/slide3.png" alt="">
            <img src="Image/SlideStore/slide2.png" alt="">
            <img src="Image/SlideStore/slide4.png" alt="">
            <img src="Image/SlideStore/slide1.png" alt="">
        </div>
    </div>
    <div class="CollectionOfStore">
        <div class="Filter-SortCollection">
            <div class="Filter">
                <span>Sản phẩm</span>
                <div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
                    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio1" autocomplete="off" checked>
                    <label class="btn btn-outline-danger" for="vbtn-radio1">Tất cả sản phẩm</label>
                    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio2" autocomplete="off">
                    <label class="btn btn-outline-danger" for="vbtn-radio2">Áo</label>
                    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio3" autocomplete="off">
                    <label class="btn btn-outline-danger" for="vbtn-radio3">Quần</label>
                    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio3" autocomplete="off">
                    <label class="btn btn-outline-danger" for="vbtn-radio3">Áo khoác</label>
                    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio3" autocomplete="off">
                    <label class="btn btn-outline-danger" for="vbtn-radio3">Đầm</label>
                    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio3" autocomplete="off">
                    <label class="btn btn-outline-danger" for="vbtn-radio3">Váy</label>
                  </div>
            </div>
        </div>
        <div class="AllImageOfProduct">

        </div>
    </div>
    <script>
        document.body.innerHTML += addFooter();
    </script>
    
</body>
</html>