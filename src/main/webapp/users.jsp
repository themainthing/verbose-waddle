<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>


<div class="row">

    <div class="container">
        <h3 class="text-center">List of Users</h3>
        <hr>
        <div class="container text-left">

            <a href="<%=request.getContextPath()%>/add" class="btn btn-success">Add
                New User</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach  var="user" items="${userList}">

                <c:url var="editButton" value="/edit">
                    <c:param name="userId" value="${user.id}"/>
                </c:url>

                <c:url var="deleteButton" value="/delete">
                    <c:param name="userId" value="${user.id}"/>
                </c:url>

                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.country}" /></td>
                    <td>
                        <input type="button" value="Edit"
                               onclick="window.location.href = '${editButton}'"/>
                    </td>
                    <td>
                        <input type="button" value="Delete"
                               onclick="window.location.href = '${deleteButton}'"/>
                    </td>
                </tr>
            </c:forEach>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>
</html>
