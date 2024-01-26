<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Image/fontawesome-free-6.4.2-web/css/all.min.css">
    <link rel="stylesheet" href="View/styleWeb/styleChangePass.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <link rel="stylesheet" href="View/styleWeb/color.css">
    <link rel="icon" href="Image/BHD-html.png" type="image/x-icon">
    <script src="View/JSWeb/addPart.js"></script>
    <title>Đổi mật khẩu</title>
</head>
<body>
<div id="container">
    <div class="header">
        <p>Đổi mật khẩu</p>
    </div>
    <form action="" class="form">
        <div class="center">
            <input type="password" placeholder="Mật khẩu hiện tại">
            <input type="password" placeholder="Mật khẩu mới">
            <input type="password" placeholder="Nhập lại mật khẩu mới">
        </div>
        <div class="button">
            <input type="button" value="Đổi mật khẩu">
        </div>
    </form>
    <div class="footer">
        <p>Bạn không muốn đổi mật khẩu?</p>
        <a href="index.jsp">Trở về trang chủ</a>
    </div>
</div>
<script>
    document.body.innerHTML += addFooter();
</script>
</body>
</html>