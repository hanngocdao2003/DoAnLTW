
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.CommentReponse" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="View/styleWeb/styleAdmin/styleUploadComment.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <title>Phản hồi của người dùng</title>
</head>
<body>
<header class="logo">
    <img src="Image/BHD-nền%20trong%20suốt.svg" alt="">
    <h3 style="font-family: 'Brush Script MT', cursive">BHD Boutique</h3>
    <form action="LogOut" method="post" id="logOut">
        <button class="logOut">Đăng xuất</button>
    </form>
</header>
<div class="center" style="display: flex;">
    <div class="left_panel" style="width: 18%;">
        <nav class="menu_bar">
            <div class="bar">
                <div class="logo_admin">
                    <i class="fa-solid fa-lock" style="color: var(--border); font-size: 20px;"></i>
                    <h2 style="color: var(--font);">Admin</h2>
                </div>
                <div class="button_add_product" onclick="buttonClick('panel5')">
                    <i class="fa-solid fa-plus" style="color: var(--border);"></i>
                    Thêm sản phẩm
                </div>
                <div class="menu_nav">
                    <ul class="menu">
                        <a href="index.jsp" style="text-decoration: none">
                            <li class="item">
                                <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                                Trang chủ
                            </li>
                        </a>
                        <li class="item" onclick="handleClick(this, 'panel2')">
                            <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                            Thống kê số liệu
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel3')">
                            <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                            Quản lý sản phẩm
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel6')">
                            <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                            Quản lý đơn hàng
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel4')">
                            <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                            Quản lý người dùng
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel7')">
                            <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                            Phản hồi người dùng
                        </li>
                        <li class="item" onclick="handleClick(this, 'panel_addSlide')">
                            <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                            Thêm trình chiếu
                        </li>
                        <a href="indexForgetPass.jsp" style="text-decoration: none">
                            <li class="item">
                                <i class="fa-solid fa-circle" style="color: var(--border);"></i>
                                Đổi mật khẩu
                            </li>
                        </a>
                    </ul>
                </div>
                <div class="button_logout" style="margin-bottom: 100%;">
                    <a href="indexLogin.jsp">
                        <button><i class="fa-solid fa-right-from-bracket" style="color: var(--border);"></i>
                            Đăng xuất
                        </button>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <div id="info_panel" class="info_panel">
        <!-- Chức năng phản hồi người dùng -->
        <div class="reply" id="panel7">
            <div id="content">
                <form class="main_label" action="uploadCmt" method="get">
                    <table id="table3">
                        <thead>
                        <tr>
                            <th class="label">Số thứ tự</th>
                            <th class="label">Tên khách hàng</th>
                            <th class="label">Nội dung phản hồi</th>
                            <th class="label">Ngày bình luận</th>
                            <th class="label">Đánh dấu đã đọc</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<CommentReponse> comments;
                            comments = (List<CommentReponse>) session.getAttribute("Comments");

                            System.out.println(comments);
                            if(comments != null && !comments.isEmpty()) {
                                for(CommentReponse c : comments){
                        %>
                        <tr>
                            <td><%= c.getId() %></td>
                            <td><%= c.getNameUser() %></td>
                            <td><%= c.getFeedback() %></td>
                            <td><%= c.getDate_cmt() %></td>
                            <td><input type="button" value="Đã đọc" class="btn_check"></td>
                        </tr>
                        <%
                            }
                        } else {
                        %>
                        <tr>
                            <td colspan="5">Không có dữ liệu để hiển thị</td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>

    </div>
</div>
</body>
</html>
