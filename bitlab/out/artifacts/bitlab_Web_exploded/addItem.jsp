<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
    <title>AddItem</title>
</head>
<body>
<%@include file="navbar.jsp"%>
<div>
<form class="row g-3" action="/submit" method="post">
    <div class="col-auto">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="col-auto">
        <label for="description" class="form-label">Description</label>
        <input type="text" class="form-control" id="description" name="description">
    </div>
    <div class="col-auto">
        <label for="deadlinedate" class="form-label">Date</label>
        <input type="date" class="form-control" id="deadlinedate" name="deadlinedate">
    </div><br>
    <div class="col-auto"> <br>
        <button type="submit" class="btn btn-primary mb-3">Добавить</button>
    </div>
</form>
</div>
</body>
</html>
