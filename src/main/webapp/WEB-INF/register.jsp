<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
                <c:if test="${sessionScope.currentUserExists}">
                    <small class="errorMessage"> Sorry, this name is already chosen! </small>
                </c:if>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
                <c:if test="${sessionScope.unsafePassword}">
                    <small class="errorMessage"> IMPORTANT: Password must be between 6-12 characters, including a
                        capital letter and number.</small>
                </c:if>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                <c:if test="${sessionScope.unsafePassword}">
                    <small class="errorMessage"> Password not matching</small>
                </c:if>
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
