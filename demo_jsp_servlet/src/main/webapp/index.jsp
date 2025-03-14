<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="discount" method="POST">
    <label for="description">Product Description:</label>
    <input type="text" id="description" name="description"><br><br>

    <label for="price">List Price:</label>
    <input type="number" id="price" name="price" step="0.01"><br><br>

    <label for="discount">Discount Percent:</label>
    <input type="number" id="discount" name="discount" step="0.01"><br><br>

    <input type="submit" value="Calculate Discount">
</form>
</body>
</html>