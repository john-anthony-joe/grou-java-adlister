<%@ page import="com.codeup.adlister.dao.Ads" %>
<%@ page import="com.codeup.adlister.dao.DaoFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

        <h3>Here are your bats</h3>

        <c:forEach var="ad" items="${userAds}">
            <div class="col-md-6">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <button><a href="/editUpdate?id=${ad.id}">edit</a></button>
                    <form action="/delete" method="post">
                        <button type="submit" id="delete" value="${ad.id}" name="delete">Delete</button>
                    </form>

            </div>
        </c:forEach>
    </div>

</body>

</html>
