<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="Image/fontawesome-free-6.4.2-web/css/all.min.css">
    <link rel="stylesheet" href="View/styles/styleMenu.css">
    <link rel="stylesheet" href="View/styles/styleOrder.css">
    <link rel="stylesheet" href="View/styles/styleFooter.css">
    <link rel="stylesheet" href="View/styles/styleButtonAdd.css">
    <script src="View/event/eventButtonAdd.js"></script>
    <link rel="icon" href="Image/BHD-html.png" type="image/x-icon">
    <title>Đơn hàng</title>
</head>
<body>
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
<div class="cart">
    <div class="container-choose">
        <div class="information-cus">
            <h1>Thông tin vận chuyển</h1>
            <div class="name-phone">
                <input type="text" placeholder="Họ và tên">
                <input type="text" placeholder="Số điện thoại">
            </div>
            <input type="text" placeholder="Email">
            <input type="text " placeholder="Địa chỉ">
            <input type="text" placeholder="Ghi chú (VD: giao sau 10h)">
            <!-- <div class="save-address">
                <input type="checkbox" id="check">
                <label for="check">Lưu địa chỉ cho lần mua hàng tiếp theo</label>
            </div> -->
        </div>
        <div class="payment">
            <h1>Hình thức thanh toán</h1>
            <div class="cod">
                <input type="radio">
                <img src="Image/cart/COD.png" alt="">
                <p>COD <br>Thanh toán khi nhận hàng</p>
            </div>
            <div class="momo">
                <input type="radio">
                <img src="Image/cart/momo.png" alt="">
                <p>Thanh toán MoMo</p>
            </div>
            <div class="zalo-pay">
                <input type="radio">
                <img src="Image/cart/zalopay.png" alt="">
                <p>Thanh toán ZaloPay</p>
            </div>
            <div class="vn-pay">
                <input type="radio">
                <img src="Image/cart/Vnpay.png" alt="">
                <p>Thẻ ATM / Thẻ tín dụng (Credit card) / Thẻ ghi nợ (Debit card)</p>
            </div>
            <div class="notification">
                <span>Bạn chấp nhận thanh toán bằng COD</span>
            </div>
        </div>
    </div>
    <div class="straight-line"></div>
    <div class="cart-details">
        <h1>Đơn hàng</h1>
        <div class="product">
            <img src="Image/Product/ÁO%20LEN%20AIMEE.jpg" alt="">
            <div class="details">
                <h3>ÁO LEN AIMEE</h3>
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
                    <!-- <form>
                        <div class="value-button" id="decrease" onclick="decreaseValue()" value="Decrease Value">-
                        </div>
                        <input type="number" id="number" value="1"/>
                        <div class="value-button" id="increase" onclick="increaseValue()" value="Increase Value">+
                        </div>
                    </form> -->
                    <span id="total" style="font-size: 30px">290.000 VND</span>
                    <span id="quantity">Số lượng: <span> 2</span></span>
                </div>
                <button><i class="fa-regular fa-trash-can" style="color: #ffffff;"></i>Xóa sản phẩm</button>
            </div>
        </div>
        <hr>
        <div class="voucher">
            <div class="ten-percent">
                <p>Mã giảm giá</p>
                <p>Giảm 10% cho đơn hàng từ 399k</p>
                <button>Áp dụng</button>
            </div>
        </div>
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
<footer>
    <div class="contain">
        <div class="content">
            <div class="store">
                <img src="Image/BHD-nền%20trong%20suốt.svg" alt="">
                <h1>BHD BOUTIQUE</h1>
            </div>
            <p class="text">Chúng tôi luôn trân trọng và mong đợi
                nhận được mọi ý kiến đóng góp từ khách
                hàng để có thể nâng cấp trải nghiệm dịch
                vụ và sản phẩm tốt hơn nữa. </p>
            <a href="comment.jsp">
                <button class="idea-btn">Đóng góp ý kiến</button>
            </a>
        </div>
        <div class="list-policy">
            <p class="policy-lb">Chính sách</p>
            <ul>
                <li><a href="policy-7days.jsp">Chính sách đổi trả 7 ngày</a></li>
                <li><a href="/policy-sale.jsp">Chính sách khuyến mãi</a></li>
                <li><a href="">Chính sách bảo mật</a></li>
                <li><a href="/policy-ship.jsp">Chính sách giao hàng</a></li>
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
<script src="View/event/eventCart.js"></script>
</body>
</html>