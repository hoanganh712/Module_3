 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Danh sách khách hàng</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<table border="1">
  <thead>
  <tr>
    <th>Tên</th>
    <th>Ngày sinh</th>
    <th>Địa chỉ</th>
    <th>Ảnh</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>${customer.name}</td>
    <td>${customer.dob}</td>
    <td>${customer.address}</td>
    <td><img src="${customer.image}" alt="${customer.name}" width="100"></td>
  </tr>
  </tbody>
</table>
</body>
</html>
