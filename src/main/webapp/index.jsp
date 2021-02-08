<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style>
        body {
            /*background-image: url("/css/img/wallpaper-pink-with-letter-cape-logo.jpg");*/
            color: yellow;
            background-color: black;
        }
        .navbar{
            color: black;
            background-color: yellow;
        }
        a{
            color: black;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Batlister! Gotham's Gallery of Guardians</h1>
    </div>
</body>
</html>
