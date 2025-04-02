<%@ page import="com.codegym.test.model.Book" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 4/2/2025
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.codegym.test.model.Book" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách sách</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Danh sách sách</h2>
    <table class="table table-bordered">
        <thead class="table-dark">
        <tr>
            <th>Mã sách</th>
            <th>Tên sách</th>
            <th>Tác giả</th>
            <th>Số lượng</th>
            <th>Mô tả</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Book> books = (List<Book>) request.getAttribute("bookList");
            for (Book book : books) {
        %>
        <tr>
            <td><%= book.getBookCode() %></td>
            <td><%= book.getBookTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getQuantity() %></td>
            <td><%= book.getDescription() %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>