<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/24/2025
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
</head>
<body>
<h1>User List</h1>

<!-- Form tìm kiếm -->
<form action="UserServlet" method="get">
    <input type="text" name="country" placeholder="Search by country">
    <button type="submit" name="action" value="search">Search</button>
</form>

<!-- Liên kết sắp xếp -->
<a href="UserServlet?action=sort">Sort by Name</a>

<!-- Hiển thị danh sách -->
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
