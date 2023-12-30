<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleAddProduct.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleAdmin.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleFeedback.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleOrderManagement.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleProductManagement.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleStatistical.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleUserManagement.css">
    <link rel="stylesheet" href="Image/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleAddSlide.css">
    <link rel="icon" href="Image/logo/BHD-html.png" type="image/x-icon">
    <link rel="stylesheet" href="fonts/stylesheet.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <title>Admin</title>
</head>

<body>
<header class="logo">
    <img src="Image/BHD-nền%20trong%20suốt.svg" alt="">
    <h3 style="font-family: 'Brush Script MT', cursive">BHD Boutique</h3>
</header>

<div class="center" style="display: flex;">
    <div class="left_panel" style="width: 18%;">
        <nav class="menu_bar">
            <div class="bar">
                <div class="logo_admin">
                    <i class="fa-solid fa-lock" style="color: #ff8080; font-size: 20px;"></i>
                    <h2 style="color: #a62c2c;">Admin</h2>
                </div>
                <div class="button_add_product" onclick="buttonClick('panel5')">
                    <i class="fa-solid fa-plus" style="color: #ff8080;"></i>
                    Thêm sản phẩm
                </div>
                <div class="menu_nav">
                    <ul class="menu">
                        <a href="index.jsp" style="text-decoration: none">
                            <li class="item">
                                <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                                Trang chủ
                            </li>
                        </a>
                        <li class="item" onclick="handleClick(this, 'panel2')">
                            <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                            Thống kê số liệu
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel3')">
                            <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                            Quản lý sản phẩm
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel6')">
                            <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                            Quản lý đơn hàng
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel4')">
                            <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                            Quản lý người dùng
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel7')">
                            <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                            Phản hồi người dùng
                        </li>

                        <li class="item" onclick="handleClick(this, 'panel_addSlide')">
                            <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                            Thêm trình chiếu
                        </li>


                        <a href="indexChangePass.jsp" style="text-decoration: none">

                            <li class="item">
                                <i class="fa-solid fa-circle" style="color: #ff8080;"></i>
                                Đổi mật khẩu
                            </li>
                        </a>
                    </ul>
                </div>
                <div class="button_logout" style="margin-bottom: 100%;">
                    <a href="indexLogin.jsp">
                        <button><i class="fa-solid fa-right-from-bracket" style="color: #ff8080;"></i>
                            Đăng xuất
                        </button>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <div id="info_panel" class="info_panel">
        <div id="panel1" class="intro_panel">
            <h2 style="color: #a62c2c">Chào mừng bạn đã trở lại!</h2>
        </div>
        <!-- Chức năng thống kê dữ liệu -->
        <div id="panel2" class="thongke_panel" style="width: 100%;">
            <div class="thongke_main">
                <div class="thongke doanhthu">
                    <i class="fa-solid fa-money-bills" style="color: #ff8080;"></i>
                    <h2 style="color: #a62c2c">0</h2>
                    <span class="temp"></span>
                    <h3 style="color: #a62c2c">VND</h3>
                </div>
                <div class="thongke">
                    <i class="fa-solid fa-cart-shopping" style="color: #ff8080;"></i>
                    <h2 style="color: #a62c2c;">0</h2>
                    <span class="temp"></span>
                    <h3 style="color: #a62c2c;">Sản phẩm đã bán</h3>
                </div>
                <div class="thongke">
                    <i class="fa-solid fa-user" style="color: #ff8080;"></i>
                    <h2 style="color: #a62c2c;">0</h2>
                    <span class="temp"></span>
                    <h3 style="color: #a62c2c;">Người đăng ký</h3>
                </div>
                <div class="thongke">
                    <i class="fa-solid fa-eye" style="color: #ff8080;"></i>
                    <h2 style="color: #a62c2c;">0</h2>
                    <span class="temp"></span>
                    <h3 style="color: #a62c2c;">Người truy cập</h3>
                </div>
            </div>
            <div id="chart">
                <canvas id="canvas">
                </canvas>
            </div>
        </div>
        <!-- Chức năng quản lý sản phẩm -->
        <div id="panel3" class="product-management">
            <div class="select_product">
                <div class="label_category">
                    <h2 style="color: #a62c2c;">Danh mục</h2>
                </div>
                <ul class="category">
                    <li>Áo
                        <ul class="submenu">
                            <li>Áo thun</li>
                            <li>Áo kiểu</li>
                            <li>Áo sơ mi</li>
                            <li>Áo croptop</li>
                        </ul>
                    </li>
                    <li>Áo khoác
                        <ul class="submenu">
                            <li>Áo khoác gió</li>
                            <li>Áo khoác len</li>
                            <li>Blazer</li>
                            <li>Áo khoác Jean/Kaki</li>
                        </ul>
                    </li>
                    <li>Quần
                        <ul class="submenu">
                            <li>Quần dài</li>
                            <li>Quần ngắn</li>
                        </ul>
                    </li>
                    <li>Đầm
                        <ul class="submenu">
                            <li>Đầm kiểu</li>
                            <li>Yếm đầm</li>
                            <li>Nguyên bộ</li>
                        </ul>
                    </li>
                    <li>Váy
                        <ul class="submenu">
                            <li>Váy dài</li>
                            <li>Váy ngắn</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="search_product">
                <form action="" id="form_search">
                    <div class="search">
                        <input type="text" class="input" placeholder="Tìm kiếm theo tên">
                        <button class="btn_search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>
                    <div class="filter">
                        <select name="filter-select" id="filter-select">
                            <option value="alphabet">Sắp xếp theo tên sản phẩm</option>
                            <option value="alphabet">Sắp xếp theo số lượng đã bán</option>
                            <option value="alphabet">Sắp xếp theo số lượng tồn</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="main_label">
                <table id="table1">
                    <thead>
                    <tr>
                        <th class="label">Mã sản phẩm</th>
                        <th class="label">Tên sản phẩm</th>
                        <th class="label">Giá</th>
                        <th class="label">Màu</th>
                        <th class="label">Số lượng đã bán</th>
                        <th class="label">Số lượng tồn</th>
                        <th class="label">Chức năng</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Chức năng quản lý người dùng -->
        <div class="customer-management" id="panel4">
            <div class="seach_customer">
                <form action="" id="form_search">
                    <div class="search">
                        <input type="text" class="input" placeholder="Tìm kiếm theo tên">
                        <button class="btn_search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>
                    <div class="filter">
                        <select name="filter-select" id="filter-select">
                            <option value="alphabet">Sắp xếp theo tên người dùng</option>
                            <option value="alphabet">Sắp xếp theo tài khoản bị khóa</option>
                        </select>
                    </div>
                </form>
            </div>
            <div id="info_customer">
                <div class="main_label">
                    <table id="table">
                        <thead>
                        <tr>
                            <th class="label">Tên người dùng</th>
                            <th class="label">Số điện thoại</th>
                            <th class="label">Email</th>
                            <th class="label">Quyền</th>
                            <th class="label">Khóa</th>
                            <th class="label">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Chức năng thêm sản phẩm -->
        <div class="container-add-product" id="panel5">
            <div class="label">
                <p style="color: #eeeeee">Thêm sản phẩm</p>
            </div>
            <div class="add-product-here">
                <div class="pictures" id="picture">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="Image/*">
                    </label>
                </div>
                <div class="pictures">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="Image/*">
                    </label>
                </div>
                <div class="pictures">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="Image/*">
                    </label>
                </div>
                <div class="pictures">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="Image/*">
                    </label>
                </div>
            </div>
            <div class="info-of-product">
                <div class="name-product">
                    <input type="text" name="name-pro" placeholder="Thêm tên sản phẩm">
                </div>
                <div class="price-product">
                    <input type="text" name="price-pro" placeholder="Thêm giá sản phẩm">
                </div>
                <div class="type-product">
                    <input type="text" name="name-pro" placeholder="Thêm loại sản phẩm">
                </div>
            </div>
            <div class="describe">
                <textarea placeholder="Mô tả sản phẩm..." required></textarea>
            </div>
            <div class="footer-container">
                <button>Thêm sản phẩm</button>
            </div>
        </div>
        <!-- Trên là đoạn code mới nhất -->
        <!-- Chức năng quản lý đơn hàng -->
        <div class="order-management" id="panel6">
            <div class="search_order">
                <form action="" id="form_search">
                    <div class="search">
                        <input type="text" class="input" placeholder="Tìm kiếm theo tên">
                        <button class="btn_search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>
                </form>
            </div>
            <div class="filter">
                <div class="status">
                    <p>Trạng thái</p>
                    <form action="">
                        <div><input name="choose1" type="radio">
                            <span>Đã thanh toán</span>
                        </div>
                        <div><input name="choose1" type="radio">
                            <span>Chưa thanh toán</span>
                        </div>
                    </form>
                </div>
                <div class="status inspect">
                    <p>Duyệt</p>
                    <form action="">
                        <div><input name="choose2" type="radio">
                            <span>Đã duyệt</span>
                        </div>
                        <div><input name="choose2" type="radio">
                            <span>Chưa duyệt</span>
                        </div>
                    </form>
                </div>
            </div>
            <div id="info_order">
                <div class="main_label">
                    <table id="table2">
                        <thead>
                        <tr>
                            <th class="label">Mã đơn hàng</th>
                            <th class="label">Tên khách hàng</th>
                            <th class="label">Số lượng sản phẩm</th>
                            <th class="label">Tổng tiền</th>
                            <th class="label">Trạng thái</th>
                            <!-- <th class="label">Mã phân quyền</th> -->
                            <th class="label">Duyệt đơn hàng</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Chức năng phản hồi người dùng -->
        <div class="reply" id="panel7">
            <div class="search-reply">
                <form action="" id="form_search">
                    <div class="search">
                        <input type="text" class="input" placeholder="Tìm kiếm theo tên">
                        <button class="btn_search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>
                    <div class="filter">
                        <select name="filter-select" id="filter-select">
                            <option value="alphabet">Sắp xếp theo chưa đọc</option>
                            <option value="alphabet">Sắp xếp theo chưa phản hồi</option>
                        </select>
                    </div>
                </form>
            </div>
            <div id="content">
                <div class="main_label">
                    <table id="table3">
                        <thead>
                        <tr>
                            <th class="label">Số thứ tự</th>
                            <th class="label">Tên khách hàng</th>
                            <th class="label">Nội dung phản hồi</th>
                            <th class="label">Đánh dấu đã đọc</th>
                            <th class="label">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Chức năng thêm slide cho trang chủ -->
        <div id="panel_addSlide">
            <div class="label">
                <p style="color: #eeeeee">Thêm chương trình</p>
            </div>
            <div class="add-product-here">
                <div class="pictures" id="picture">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="image/*">
                    </label>
                </div>
                <div class="pictures">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="image/*">
                    </label>
                </div>
                <div class="pictures">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="image/*">
                    </label>
                </div>
                <div class="pictures">
                    <label for="input-file">Tải ảnh lên
                        <input type="file" id="input-file" name="image1" accept="image/*">
                    </label>
                </div>
            </div>
            <div class="footer-container">
                <button>Xác nhận thêm</button>
                <button>Xóa tất cả</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="View/JSWeb/data.js"></script>
<script src="View/JSWeb/eventAdmin.js"></script>
<script src="View/JSWeb/eventAddProduct.js"></script>
</body>

</html>