<%@ page import="bean.UserEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Slide" %>
<%@ page import="controller.ImageSliderServlet" %>
<%@ page import="service.Add_Image_Service" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <title>Trang chủ</title>
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
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
            <div class="rightIcon">
                <a href="" class="cart"><i class="fa-solid fa-cart-shopping"></i></a>

                <%
                    String success = (String) session.getAttribute("Success");
                    if (success != null) {
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
<div class="SliderShow_Store" >
    <div class="SlideList">
        <%
            List<String> imagePaths = Add_Image_Service.loadSlider();
            for (String imagePath : imagePaths) {
        %>
        <img src="<%= imagePath %>" alt="">
        <% } %>
       <%-- <img src="Image/SlideStore/slide3.png" alt="">
        <img src="Image/SlideStore/slide2.png" alt="">
        <img src="Image/SlideStore/slide4.png" alt="">
        <img src="Image/SlideStore/slide1.png" alt="">--%>
    </div>
</div>
<div class="CategoryCard">
    <a href="">
        <div class="CategoryItem T-Shirt">
            <div class="TitleCategory"><span>Áo</span></div>
        </div>
    </a>

    <a href="">
        <div class="CategoryItem Jacket">
            <div class="TitleCategory"><span>Áo Khoác</span></div>
        </div>
    </a>

    <a href="">
        <div class="CategoryItem Trouser">
            <div class="TitleCategory"><span>Quần</span></div>
        </div>
    </a>

    <a href="">
        <div class="CategoryItem Dress">
            <div class="TitleCategory"><span>Đầm</span></div>
        </div>
    </a>

    <a href="">
        <div class="CategoryItem Skirt">
            <div class="TitleCategory"><span>Váy</span></div>
        </div>
    </a>
</div>
<div class="Top10 NewProductOfStore">
    <div class="Filter_ProductSilde">
        <span>Sản phẩm mới</span>
        <div class="SliderShow_Product">
            <div class="SlideListProduct">
                <img src="Image/Product/Áo%20kiểu%20Amory.png" alt="">
                <img src="Image/Product/Quần%20dài%20Foris.png" alt="">
                <img src="Image/Product/Quần%20Garo.jpg" alt="">
                <img src="Image/Product/Quần%20Dài%20Doris%20(2).jpg" alt="">
                <img src="Image/Product/ÁO%20KHOÁC%20KASEY.jpg" alt="">
                <img src="Image/Product/ÁO%20KHOÁC%20HENNA.jpg" alt="">
                <img src="Image/Product/Đầm%20hai%20dây%20pamela%20(2).jpg" alt="">
                <img src="Image/Product/Váy%20Dài%20Arisha.png" alt="">
                <img src="Image/Product/VÁY%20NGẮN%20VALERIE.jpg" alt="">
                <img src="Image/Product/Váy%20dài%20Belle.jpg" alt="">
            </div>
        </div>
    </div>
</div>

<div class="Top10 OfCategory">
    <span>Sản phẩm bán chạy</span>
    <div class="Top10 T-ShirtOfStore">
        <div class="Filter_ProductSilde">
            <span>Áo</span>
            <div class="SliderShow_Product">
                <div class="SlideListProduct">
                    <img src="Image/ProductAreaOfShop%20Shirt/mickey.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/simple.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/ready%20to%20wear.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/strawberry.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/Áo%20Ana%20Luna%20puff%20(3).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/ÁO%20CROPTOP%20ANYA.png" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/Áo%20croptop%20button.png" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/Áo%20Dài%20Beta.png" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/Áo%20Gile%20Pia.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Shirt/Sunset%20flow.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="Top10 TrouserOfStore">
        <div class="Filter_ProductSilde">
            <span>Quần</span>
            <div class="SliderShow_Product">
                <div class="SlideListProduct">
                    <img src="Image/ProductAreaOfShop%20Trousers/quần%20Clerk.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/Quần%20Dài%20Cline.png" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/Quần%20Dài%20Doris%20(3).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/Quần%20dài%20Genna%20(1).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/Quần%20dài%20Luzi.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/QUẦN%20Dài%20DAHLIA.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/Quần%20dài%20ryan%20(5).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/quần%20gwen.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/Quần%20Dài%20Anisa.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Trousers/quần%20Erica.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="Top10 JacketOfStore">
        <div class="Filter_ProductSilde">
            <span>Áo khoác</span>
            <div class="SliderShow_Product">
                <div class="SlideListProduct">
                    <img src="Image/ProductAreaOfShop%20Jacket/Áo%20Gile%20Alisa%20(2).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/Áo%20Gile%20Len.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/ÁO%20HOODIE%20SISTERHOOD.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/ÁO%20LEN%20AIMEE.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/ÁO%20KHOÁC%20ISABEL.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/Áo%20len%20lyzia.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/Áo%20Len%20Yasmin.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/Áo%20khoát%20kirby.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/ÁO%20KHOÁC%20ZIEL.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Jacket/ÁO%20HOODIE%20JOILE%20FLEUR.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="Top10 DressOfStore">
        <div class="Filter_ProductSilde">
            <span>Đầm</span>
            <div class="SliderShow_Product">
                <div class="SlideListProduct">
                    <img src="Image/ProductAreaOfShop%20Dress/ĐẦM%20ALINA.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/ĐẦM%20ASHLY.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/Đầm%20Barbara.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/ĐẦM%20BETTY.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/ĐẦM%20CELINE.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/Đầm%20dây%20jelly.png" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/Đầm%20hai%20dây%20Pamela.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/Đầm%20Soozy%20(2).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/Đầm%20Riley.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Dress/Đầm%20Julia.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="Top10 DressOfStore">
        <div class="Filter_ProductSilde">
            <span>Váy</span>
            <div class="SliderShow_Product">
                <div class="SlideListProduct">
                    <img src="Image/ProductAreaOfShop%20Skirt/CHÂN%20VÁY%20AMANDA.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/CHÂN%20VÁY%20JOCELYN.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/Váy%20dài%20Belle.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/Váy%20dài%20Elin.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/Váy%20dài%20nona.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/Váy%20ngắn%20Rosa.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/VÁY%20NGẮN%20MORRIS.jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/Váy%20Ngắn%20Nora%20(2).jpg" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/vÁY%20NGẮN%20Vaella.png" alt="">
                    <img src="Image/ProductAreaOfShop%20Skirt/VÁY%20NGẮN%20VALERIE.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    document.body.innerHTML += addFooter();
</script>
</body>
</html>