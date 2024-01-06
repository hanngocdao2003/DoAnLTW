<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="Image/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
  <link rel="stylesheet" href="View/styleWeb/styleHeader.css">
  <link rel="stylesheet" href="View/styleWeb/styleCart.css">
  <link rel="stylesheet" href="View/styleWeb/color.css">
  <link rel="icon" href="Image/logo/BHD-html.png" type="image/x-icon">
  <title>Giỏ hàng</title>
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
  <div class="details_cart">
    <div class="introduce">
      <p style="color: brown;">Giỏ hàng của bạn</p>
      <div class="crossbar"></div>
    </div>
    <!-- <div class="main_label">
      <table id="table">
          <thead>
          <tr>
              <th class="label">Sản phẩm</th>
              <th class="label">Đơn giá</th>
              <th class="label">Màu Sắc</th>
              <th class="label">Size</th>
              <th class="label">Số lượng</th>
              <th class="label">Thao tác</th>
          </tr>
          </thead>
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody> -->
    <div class="product">
      <input type="checkbox">
      <img src="Image/Product/ÁO%20LEN%20AIMEE.jpg" alt="">
      <span class="name" style="font-size: 20px;">ÁO LEN AIMEE</span>
      <span class="price">290.000đ</span>
      <select name="color" id="colour">
        <option>Đen</option>
        <option>Trắng</option>
        <option>Hồng</option>
      </select>
      <select name="size" id="size">
        <option>S</option>
        <option>M</option>
        <option>L</option>
    </select>
      <form>
        <div class="value-button" id="decrease" onclick="decreaseValue()" value="Decrease Value">-
        </div>
        <input type="number" id="number" value="1" />
        <div class="value-button" id="increase" onclick="increaseValue()" value="Increase Value">+
        </div>
      </form>
      <button class="delete">XÓA</button>
    </div>
    <div class="operation">
      <div class="sub-operation">
        <button class="continue">Tiếp tục xem sản phẩm</button>
        <button class="payment"><a href="indexOrder.jsp" style="color: white;">Tiến hành thanh
                                                                               toán</a></button>
      </div>
    </div>
  </div>
  <footer id="footer">
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
          <li><a href="policy-sale.jsp">Chính sách khuyến mãi</a></li>
          <li><a href="policy-ship.jsp">Chính sách giao hàng</a></li>
        </ul>
        <div class="media">
          <a href="https://www.facebook.com/Binh.PHHT/" target="_blank"><img src="Image/fb.png" alt="fb-icon"></a>
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
          <h5><i class="fas fa-map-marker-alt" style="color: #000000; max-width: 10px; margin-right: 7px;"></i>Địa chỉ
          </h5>
          <p>Khu phố 6, phường Linh Trung
            <br>Thành phố Thủ Đức, Thành phố Hồ Chí Minh
          </p>
        </div>
        <div class="mail">
          <h5><i class="fas fa-envelope" style="color: #000000; max-width: 10px; margin-right: 11px;"></i>Email</h5>
          <p>bhdstore2023@gmail.com</p>
        </div>
      </div>
      <div class="image">
        <a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+h%E1%BB%8Dc+N%C3%B4ng+L%C3%A2m+TP.+H%E1%BB%93+Ch%C3%AD+Minh/@10.8712817,106.7891868,17z/data=!3m1!4b1!4m6!3m5!1s0x3175276398969f7b:0x9672b7efd0893fc4!8m2!3d10.8712764!4d106.7917617!16s%2Fm%2F02q4yqq?hl=vi-VN&entry=ttu"
          target="_blank"><img src="Image/z4793086544750_3d5a24d390a654d6b14383f5afd1f044.jpg" alt=""></a>
      </div>
    </div>
  </footer>
  <script src="View/JSWeb/eventButtonAdd.js"></script>
</body>

</html>