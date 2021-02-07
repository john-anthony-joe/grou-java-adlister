<%--
  Created by IntelliJ IDEA.
  User: joecuthbert
  Date: 2/5/21
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>yo</title>
</head>
<body>
    <div class="container">
        <h1>Edit your Ad</h1>
        <form action="/editUpdate" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${editAd.title}">
                <input type="hidden" value="${editAd.id}" name="id">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control">${editAd.description}</textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>

</body>
</html>
