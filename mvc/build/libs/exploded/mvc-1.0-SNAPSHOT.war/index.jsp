<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<ul>
    <c:forEach var="product" items="${products}">
        <li>${product.id}: ${product.name}</li>
    </c:forEach>
</ul>
</body>
</html>
