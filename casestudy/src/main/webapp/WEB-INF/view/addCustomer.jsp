<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/28/2025
  Time: 6:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới Khách hàng</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h1>Thêm mới Khách hàng</h1>
<form action="customer" method="post">
    <input type="hidden" name="action" value="add">
    <label for="customerCode">Mã Khách hàng:</label>
    <input type="text" id="customerCode" name="customerCode" required pattern="KH-\d{4}"><br>

    <label for="name">Tên:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="phone">Số điện thoại:</label>
    <input type="text" id="phone" name="phone" required pattern="(090|091|84\+90|84\+91)\d{7}"><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="address">Địa chỉ:</label>
    <input type="text" id="address" name="address" required><br>

    <label for="birthDate">Ngày sinh:</label>
    <input type="date" id="birthDate" name="birthDate" required><br>

    <input type="submit" value="Thêm mới">
</form>
<a href="customer?action=list">Quay lại danh sách</a>
</body>
</html>
