<%@ page import="kz.bitlab.db.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
    <title>Task Manager</title>
</head>
<body>
<%@include file="navbar.jsp"%>
<main>
    <table class="table">
        <thead>
        <tr>
            <th scope ="col">ID</th>
            <th scope ="col">Наименование</th>
            <th scope ="col">Крайний срок</th>
            <th scope ="col">Детали</th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
            for(Task task : tasks){
        %>
        <tr>
            <th scope = "row"><%=task.getId()%></th>
            <td><span onclick="if (this.style.textDecoration === 'line-through') { this.style.textDecoration = 'none'; } else { this.style.textDecoration = 'line-through'; }"><%=task.getName()%></span></td>
            <td><%=task.getDeadlineDate()%></td>
            <td><a role="button" class="btn btn-primary" href="/details?id=<%=task.getId()%>">DETAILS</a> </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</main>
</body>
</html>
