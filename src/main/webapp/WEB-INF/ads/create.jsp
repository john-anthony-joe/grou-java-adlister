<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
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
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="image_url">Image Url</label>
                <input id="image_url" name="image_url" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="start_year">Start Year</label>
                <input id="start_year" name="start_year" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="end_year">End Year</label>
                <input id="end_year" name="end_year" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
