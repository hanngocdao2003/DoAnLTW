<%@ page import="bean.UserEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Debug: In ra thông tin Session --%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Image/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <link rel="stylesheet" href="View/styleWeb/styleHeader.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <link rel="stylesheet" href="View/styleWeb/stylePersonal.css">
    <link rel="icon" href="Image/logo/BHD-html.png" type="image/x-icon">
    <script src="View/JSWeb/code.jquery.com_jquery-3.7.1.min.js"></script>
    <script src="View/JSWeb/slick.min.js"></script>
    <script src="View/JSWeb/addPart.js"></script>
    <script src="View/JSWeb/JSHome.js"></script>
    <script src="View/JSWeb/slideShow.js"></script>
    <title>Thông tin cá nhân</title>
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
<div class="infor-user">
    <div class="label">
        <p style="color: brown;">Tài khoản của bạn</p>
        <div class="crossbar"></div>
    </div>
    <hr>
    <div class="information-acc">
        <form class="inf_acc" action="Personal" method="post">
            <%
                UserEntity userEntity = (UserEntity) session.getAttribute("user");
                System.out.println(userEntity);
                String fullName = (userEntity != null) ? userEntity.getFullName() : "";
                String numberPhone = (userEntity != null) ? userEntity.getPhone() : "";
                String email = (userEntity != null) ? userEntity.getEmail() : "";
                String birthday = (userEntity != null) ? userEntity.getBirthday() : "";
                String province = (userEntity != null) ? userEntity.getProvince() : "";
                String district = (userEntity != null) ? userEntity.getDistrict() : "";
                String ward = (userEntity != null) ? userEntity.getWard() : "";
                String numHouse = (userEntity != null) ? userEntity.getNumHouse() : "";
            %>
            <label for="fullName">Họ và tên :</label>
            <input type="text" id="fullName" readonly value="<%= fullName %>" name="fullName">

            <label for="numberPhone">Số điện thoại :</label>
            <input type="text" id="numberPhone" readonly value="<%= numberPhone %>" name="numberPhone">

            <label for="email">Email :</label>
            <input type="email" id="email" readonly value="<%= email %>" name="email">

            <label for="birthday">Ngày sinh :</label>
            <input type="date" id="birthday" readonly value="<%= birthday %>" name="birthday">

            <label for="address">Địa chỉ :</label>
            <div id="address" class="address label_information">
                <input type="text" placeholder="Tỉnh-Thành phố" readonly value="<%= province %>" name="province">
                <input type="text" placeholder="Quận-Huyện" readonly value="<%= district %>" name="district">
                <input type="text" placeholder="Xã-Phường-Thị trấn" readonly value="<%= ward %>" name="ward">
                <input type="text" placeholder="Số nhà-Đường" readonly value="<%= numHouse %>" name="numHouse">
            </div>
        </form>


    </div>
    <div class="buttonOfpage">
        <a href="indexLogin.jsp">
            <button class="logOut">Đăng xuất</button>
<%--            nếu user trong session thì xóa user kho secsion + trở về index.jsp--%>
        </a>
        <button class="update">Cập nhập thông tin</button>
    </div>
</div>
<script>
    document.body.innerHTML += addFooter();
</script>
</body>

</html>

