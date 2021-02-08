<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
    <title>Password Help</title>
    <style>
        body {
            /*background-image: url("/css/img/wallpaper-pink-with-letter-cape-logo.jpg");*/
            color: yellow;
            background-color: black;
        }

        .navbar {
            color: black;
            background-color: yellow;
        }

        a {
            color: black;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<%--<div>--%>
<%--&lt;%&ndash;    <h5>Email address </h5>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label for="email"><input type="email" placeholder="adamwest@batman.com" id="email"></label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <button type="submit">Submit</button>&ndash;%&gt;--%>

<%--    <form action="/forgotPassword" method="post">--%>
<%--        <div class="form-group">--%>
<%--            <label for="title">Title</label>--%>
<%--            <input id="title" name="title" class="form-control" type="text">--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-block btn-primary">--%>
<%--    </form>--%>
<%--</div>--%>


<div class="container">
    <h1>Forgot Password?</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Email Address</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
