<%--
  Created by IntelliJ IDEA.
  User: selezn
  Date: 26.03.17
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<table border="1">
<tr>
    <th>Date</th>
    <th>Calories</th>
    <th>Ecxeed</th>
    <th>Dscription</th>
</tr>
<c:forEach items="${mealsList}" var="meal">
    <tr>
        <td>${meal.dateTime}</td>
        <td>${meal.calories}</td>
        <td>
        <c:choose>
            <c:when test="${meal.exceed==true}">
                <font color="red">${meal.exceed}</font>
            </c:when>
            <c:when test="${meal.exceed==false}">
                <font color="blue">${meal.exceed}</font>
            </c:when>
        </c:choose>
        </td>
        <td>${meal.description}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
