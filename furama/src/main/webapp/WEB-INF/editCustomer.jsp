<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/31/2025
  Time: 1:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.codegym.furama.model.Customer" %>
<%@ page import="java.sql.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Customer customer = new Customer();
    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/furama", "root", "password");
         PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM customer WHERE id=?")) {
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            customer.setId(resultSet.getInt("id"));
            customer.setCustomerName(resultSet.getString("customer_name"));
            customer.setCustomerBirthday(resultSet.getString("customer_birthday"));
            customer.setCustomerGender(resultSet.getString("customer_gender"));
            customer.setCustomerIdCard(resultSet.getString("customer_id_card"));
            customer.setCustomerPhone(resultSet.getString("customer_phone"));
            customer.setCustomerEmail(resultSet.getString("customer_email"));
            customer.setCustomerType(resultSet.getString("customer_type"));
            customer.setCustomerAddress(resultSet.getString("customer_address"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Sửa Khách hàng</title>
</head>
<body>
<h1>Sửa Khách hàng</h1>
<form action="customers" method="post">
    <input type="hidden" name="id" value="<%= customer.getId() %>">
    Tên: <input type="text" name="customer_name" value="<%= customer.getCustomerName() %>" required><br>
    Ngày sinh: <input type="date" name="customer_birthday" value="<%= customer.getCustomerBirthday() %>" required><br>
    Giới tính: <input type="text" name="customer_gender" value="<%= customer.getCustomerGender() %>" required><br>
    Số CMND: <input type="text" name="customer_id_card" value="<%= customer.getCustomerIdCard() %>" required><br>
    Số điện thoại: <input type="text" name="customer_phone" value="<%= customer.getCustomerPhone() %>" required><br>
    Email: <input type="email" name="customer_email" value="<%= customer.getCustomerEmail() %>" required><br>
    Loại khách: <input type="text" name="customer_type" value="<%= customer.getCustomerType() %>" required><br>
    Địa chỉ: <input type="text" name="customer_address" value="<%= customer.getCustomerAddress() %>" required><br>
    <input type="submit" value="Cập nhật Khách hàng">
</form>
</body>
</html>