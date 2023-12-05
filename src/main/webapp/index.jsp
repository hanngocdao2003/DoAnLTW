<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="Image/fontawesome-free-6.4.2-web/css/all.min.css">
    <link rel="stylesheet" href="View/styles/styleHome.css">
    <link rel="stylesheet" href="View/styles/styleMenu.css">
    <link rel="stylesheet" href="View/styles/styleFooter.css">
    <link rel="stylesheet" href="View/styles/styleSlide.css">
    <link rel="stylesheet" href="View/styles/styleProduct.css">
    <link rel="icon" href="Image/BHD-html.png" type="image/x-icon">
    <script src="View/JSEvent/code.jquery.com_jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Trang chủ</title>
</head>

<body>
<div id="menu_container">
    <nav class="main_menu">
        <div class="menu">
            <a href="index.jsp" class="logo">
                <img src="Image/BHD-nền trong suốt.svg" alt="404">
                <h1>BHD Boutique</h1>
            </a>
            <div class="list_item">
                <ul class="menu_item">
                    <li class="item">
                        <a href="index.html">Trang chủ</a>
                    </li>
                    <li class="item">
                        <a href="View/allProductofCategory.html">Bộ sưu tập</a>
                    </li>
                    <li class="item">
                        <a href="View/fileHTMLProduct/ItemShirt/FullShirt.html">Áo
                            <a href="">
                                <i class="fa-solid fa-chevron-down"></i>
                            </a>
                            <ul class="dropdown ao_item">
                                <li class="item sub_item">
                                    <a href="View/fileHTMLProduct/ItemShirt/T_Shirt.html">Áo thun</a>
                                </li>
                                <li class="item sub_item">
                                    <a href="View/fileHTMLProduct/ItemShirt/StyleShirt.html">Áo kiểu</a>
                                </li>
                                <li class="item sub_item">
                                    <a href="View/fileHTMLProduct/ItemShirt/Shirt.html">Áo sơ mi</a>
                                </li>
                                <li class="item sub_item">
                                    <a href="View/fileHTMLProduct/ItemShirt/CroptopShirt.html">Áo croptop</a>
                                </li>
                            </ul>
                        </a>
                    </li>
                    <li class="item">
                        <a href="View/fileHTMLProduct/ItemJacket/fullJacket.html">Áo khoác
                            <i class="fa-solid fa-chevron-down"></i>
                        </a>
                        <ul class="dropdown aokhoac_item">
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemJacket/jacketWind.html">Áo khoác gió</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemJacket/sweater.html">Áo khoác len</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemJacket/jacketBlazer.html">Blazer</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemJacket/jacketJean.html">Áo khoác Jean/Kaki</a>
                            </li>
                        </ul>
                    </li>
                    <li class="item">
                        <a href="View/fileHTMLProduct/ItemTrouser/fullTrouser.html">Quần
                            <i class="fa-solid fa-chevron-down"></i>
                        </a>
                        <ul class="dropdown quan_item">
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemTrouser/TrouserLong.html">Quần dài</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemTrouser/TrouserShort.html">Quần ngắn</a>
                            </li>
                        </ul>
                    </li>
                    <li class="item">
                        <a href="View/fileHTMLProduct/ItemDress/fullDress.html">Đầm
                            <i class="fa-solid fa-chevron-down"></i>
                        </a>
                        <ul class="dropdown dam_item">
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemDress/DressStyle.html">Đầm kiểu</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemDress/CamisoleDress.html">Yếm đầm</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemDress/DressFullSet.html">Nguyên bộ</a>
                            </li>
                        </ul>
                    </li>
                    <li class="item">
                        <a href="View/fileHTMLProduct/ItemSkirt/fullSkirt.html">Váy
                            <i class="fa-solid fa-chevron-down"></i>
                        </a>
                        <ul class="dropdown vay_item">
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemSkirt/LongSkirt.html">Váy dài</a>
                            </li>
                            <li class="item sub_item">
                                <a href="View/fileHTMLProduct/ItemSkirt/ShortSkirt.html">Váy ngắn</a>
                            </li>
                        </ul>
                    </li>
                    <li class="item">
                        <a id="contact">Liên hệ</a>
                    </li>
                </ul>
            </div>
            <div class="task">
                <ul class="task_item">
                    <li class="logo_item">
                        <a class="SearchItem"> <i class="fa-solid fa-magnifying-glass" style="color: #ff8080;"></i>
                        </a>
                    </li>
                    <li class="logo_item">
                        <a href="View/indexLogin.html"><i class="fa-solid fa-user"
                                                          style="color: #ff8080;"></i></a>
                        <ul class="personalArea">
                            <li class="personal-Item"><a href="View/indexPersonal.html">Thông tin cá nhân</a></li>
                            <li class="personal-Item"><a href="index.html">Đăng xuất</a></li>
                        </ul>
                    <li class="logo_item">
                        <a href="View/indexCart.html"><i class="fa-solid fa-cart-shopping" style="color: #ff8080;"></i>
                        </a>
                    </li>
                </ul>

                </li>
            </div>
        </div>
        <div class="searchArea" id="searchArea">
            <form class="searchForm">
                <input type="text" class="search" id="searchProduct">
                <button class="btnsearchProduct"><i class="fa-solid fa-magnifying-glass"
                                                    style="color: #ff8080;"></i></button>
            </form>
        </div>
    </nav>
</div>
<div id="slider">
    <div>
        <img src="Image/slide1.png" alt="">
        <img src="Image/slide2.png" alt="">
        <img src="Image/slide3.png" alt="">
        <img src="Image/slide4.png" alt="">
    </div>
</div>
<div class="ProductArea">
    <div class="newProductArea">
        <h2 class="titleProduct"><span>MẶT HÀNG MỚI</span></h2>

        <ul class="listItemProduct" id="listNewItemProduct">
        </ul>
    </div>
    <div class="ProductAreaOfShop Shirt">
        <h2 class="titleProduct"><span>Áo</span></h2>
        <a href="View/fileHTMLProduct/ItemShirt/FullShirt.html" class="seenAll">
            <h3>Xem tất cả</h3>
        </a>
        <ul class="listItemProduct" id="listShirtProduct">
        </ul>
    </div>
    <div class="ProductAreaOfShop Jacket">
        <h2 class="titleProduct"><span>Áo khoác</span></h2>
        <a href="View/fileHTMLProduct/ItemJacket/fullJacket.html" class="seenAll">
            <h3>Xem tất cả</h3>
        </a>
        <ul class="listItemProduct" id="listJacketProduct">
        </ul>
    </div>
    <div class="ProductAreaOfShop Trousers">
        <h2 class="titleProduct"><span>Quần</span></h2>
        <a href="View/fileHTMLProduct/ItemTrouser/fullTrouser.html" class="seenAll">
            <h3>Xem tất cả</h3>
        </a>
        <ul class="listItemProduct" , id="listTrouserProduct">

        </ul>
    </div>
    <div class="ProductAreaOfShop LongSkirt">
        <h2 class="titleProduct"><span>Đầm</span></h2>
        <a href="View/fileHTMLProduct/ItemDress/fullDress.html" class="seenAll">
            <h3>Xem tất cả</h3>
        </a>
        <ul class="listItemProduct" id="listLongSkirtProduct">
        </ul>
    </div>
    <div class="ProductAreaOfShop Skirt">
        <h2 class="titleProduct"><span>Váy</span></h2>
        <a href="View/fileHTMLProduct/ItemSkirt/fullSkirt.html" class="seenAll">
            <h3>Xem tất cả</h3>
        </a>
        <ul class="listItemProduct" id="listSkirtProduct">


        </ul>
    </div>
</div>
<footer id="footer">
    <div class="contain">
        <div class="content">
            <div class="store">
                <img src="Image/BHD-nền trong suốt.svg" alt="">
                <h1>BHD BOUTIQUE</h1>
            </div>
            <p class="text">Chúng tôi luôn trân trọng và mong đợi
                nhận được mọi ý kiến đóng góp từ khách
                hàng để có thể nâng cấp trải nghiệm dịch
                vụ và sản phẩm tốt hơn nữa. </p>
            <a href="View/comment.html">
                <button class="idea-btn">Đóng góp ý kiến</button>
            </a>
        </div>
        <div class="list-policy">
            <p class="policy-lb">Chính sách</p>
            <ul>
                <li><a href="View/policy-7days.html">Chính sách đổi trả 7 ngày</a></li>
                <li><a href="View/policy-sale.html">Chính sách khuyến mãi</a></li>
                <li><a href="View/policy-ship.html">Chính sách giao hàng</a></li>
            </ul>
            <div class="media">
                <a href="https://www.facebook.com/Binh.PHHT/" target="_blank"><img src="Image/fb.png"
                                                                                   alt="fb-icon"></a>
                <a href="https://www.instagram.com/peace_bi.ht/" target="_blank"><img src="Image/instagram.png"
                                                                                      alt="instagram-icon"></a>
            </div>
        </div>
        <div class="support">
            <div class="hotline">
                <h5><i class="fa-sharp fa-solid fa-phone-volume"
                       style="color: #000000; max-width: 10px; margin-right: 10px;"></i>Hotline</h5>
                <p>0908586584 - 0896435451
                    <br>(8:30 - 22:00)
                </p>
            </div>
            <div class="address">
                <h5><i class="fas fa-map-marker-alt"
                       style="color: #000000; max-width: 10px; margin-right: 7px;"></i>Địa chỉ
                </h5>
                <p>Khu phố 6, phường Linh Trung
                    <br>Thành phố Thủ Đức, Thành phố Hồ Chí Minh
                </p>
            </div>
            <div class="mail">
                <h5><i class="fas fa-envelope"
                       style="color: #000000; max-width: 10px; margin-right: 11px;"></i>Email</h5>
                <p>bhdstore2023@gmail.com</p>
            </div>
        </div>
        <div class="image">
            <a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+h%E1%BB%8Dc+N%C3%B4ng+L%C3%A2m+TP.+H%E1%BB%93+Ch%C3%AD+Minh/@10.8712817,106.7891868,17z/data=!3m1!4b1!4m6!3m5!1s0x3175276398969f7b:0x9672b7efd0893fc4!8m2!3d10.8712764!4d106.7917617!16s%2Fm%2F02q4yqq?hl=vi-VN&entry=ttu"
               target="_blank"><img src="Image/z4793086544750_3d5a24d390a654d6b14383f5afd1f044.jpg" alt=""></a>
        </div>
    </div>
</footer>
<script src="View/JSEvent/slick.min.js"></script>
<script src="View/JSEvent/HomeEvent.JS"></script>
<script src="View/JSEvent/MenuEvent.JS"></script>
</body>

</html>