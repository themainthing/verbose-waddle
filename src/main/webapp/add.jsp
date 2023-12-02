<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 02.12.2023
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    <c:if test="${user != null}">
        Edit User
    </c:if>
    <c:if test="${user == null}">
        Add New User
    </c:if>
</h3>
<c:if test="${user != null}">
<form action="edit" method="post">
    </c:if>
    <c:if test="${user == null}">
    <form action="add" method="post">
        </c:if>
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
            </c:if>
    <input class="w3-input w3-border" required name="name" placeholder="Enter Name">
    <br>
    <input class="w3-input w3-border" required name="email" placeholder="Enter email">
    <br>
    <input class="w3-input w3-border" required name="country" placeholder="Enter country">
    <br>
    <button class="w3-button w3-round btn-block w3-green" type="submit">Submit</button>
</form>
</body>
</html>
