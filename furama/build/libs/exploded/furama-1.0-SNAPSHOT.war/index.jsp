<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.codegym.furama.model.Customer" %>
<html>
<head>
    <title>Quản lý Khách hàng</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<h1>Danh sách Khách hàng</h1>
<h2>Thêm Khách hàng</h2>
<form action="customers" method="post">
    Tên: <input type="text" name="customer_name" required><br>
    Ngày sinh: <input type="date" name="customer_birthday" required><br>
    Giới tính: <input type="text" name="customer_gender" required><br>
    Số CMND: <input type="text" name="customer_id_card" required><br>
    Số điện thoại: <input type="text" name="customer_phone" required><br>
    Email: <input type="email" name="customer_email" required><br>
    Loại khách: <input type="text" name="customer_type" required><br>
    Địa chỉ: <input type="text" name="customer_address" required><br>
    <input type="submit" value="Thêm Khách hàng">
</form>

<table>
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Giới tính</th>
        <th>Số CMND</th>
        <th>Số điện thoại</th>
        <th>Email</th>
        <th>Loại khách</th>
        <th>Địa chỉ</th>
        <th>Hành động</th>
    </tr>
    <%
        List<Customer> customers = (List<Customer>) request.getAttribute("customers");
        for (Customer customer : customers) {
    %>
    <tr>
        <td><%= customer.getId() %></td>
        <td><%= customer.getCustomerName() %></td>
        <td><%= customer.getCustomerBirthday() %></td>
        <td><%= customer.getCustomerGender() %></td>
        <td><%= customer.getCustomerIdCard() %></td>
        <td><%= customer.getCustomerPhone() %></td>
        <td><%= customer.getCustomerEmail() %></td>
        <td><%= customer.getCustomerType() %></td>
        <td><%= customer.getCustomerAddress() %></td>
        <td>
            <a href="editCustomer?id=<%= customer.getId() %>">Sửa</a>
            <a href="deleteCustomer?id=<%= customer.getId() %>" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">Xóa</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>