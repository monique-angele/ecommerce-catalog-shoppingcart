<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Your Shopping Cart</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h1>Your Shopping Cart</h1>
<c:if test="${empty cart}">
    <p>Your cart is empty.</p>
</c:if>
<c:if test="${not empty cart}">
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
        </tr>
        <c:forEach var="item" items="${cart}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.price}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br>
<a href="products">Continue Shopping</a>
</body>
</html>
