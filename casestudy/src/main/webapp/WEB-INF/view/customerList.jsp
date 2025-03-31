<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/28/2025
  Time: 6:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Danh sách Khách hàng</title>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h1>Danh sách Khách hàng</h1>
<a href="customer?action=add">Thêm mới Khách hàng</a>
<table border="1">
  <tr>
    <th>Mã Khách hàng</th>
    <th>Tên</th>
    <th>Số điện thoại</th>
    <th>Email</th>
    <th>Địa chỉ</th>
    <th>Ngày sinh</th>
    <th>Hành động</th>
  </tr>
  <c:forEach var="customer" items="${customers}">
    <tr>
      <td>${customer.customerCode}</td>
      <td>${customer.name}</td>
      <td>${customer.phone}</td>
      <td>${customer.email}</td>
      <td>${customer.address}</td>
      <td>${customer.birthDate}</td>
      <td>
        <a href="customer?action=edit&id=${customer.id}">Sửa</a>
        <a href="customer?action=delete&id=${customer.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

