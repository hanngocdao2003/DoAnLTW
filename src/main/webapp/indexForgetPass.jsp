<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="View/styleWeb/styleHeader.css">
    <link rel="stylesheet" href="View/styleWeb/styleChangePass.css">
    <link rel="stylesheet" href="View/styleWeb/styleForgetPass.css">
    <link rel="stylesheet" href="Image/fontawesome-free-6.4.2-web/css/all.min.css">
    <link rel="stylesheet" href="View/styleWeb/styleFooter.css">
    <script src="View/JSWeb/addPart.js"></script>
    <link rel="icon" href="Image/BHD-html.png" type="image/x-icon">
    <title>Quên mật khẩu</title>
</head>
<body>
<div id="container">
    <div class="header">
        <p>Quên mật khẩu</p>
        <span>
    <i class="fa-regular fa-circle-xmark" style="color: #ff8080;"></i>
        </span>
    </div>
    <form action="" class="form">
      <div class="center">
        <input type="email" id="email" placeholder="Email">
    </div>
    <div class="button">
        <input type="button" value="khôi phục">
    </div>
    </form>
    <div class="footer">
        <p>Bạn đã nhớ mật khẩu?</p>
        <a href="indexLogin.jsp">Trở về đăng nhập</a>
    </div>
</div>
<script>
    document.body.innerHTML += addFooter();
</script>
</body>
</html>