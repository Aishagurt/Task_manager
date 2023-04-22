<%@ page import="kz.bitlab.db.Task" %><%--
  Created by IntelliJ IDEA.
  User: Aisha
  Date: 22.04.2023
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
    <title>Title</title>
</head>
<body>
<%@include file="navbar.jsp"%>
               <div>
    <%
        Task task = (Task) request.getAttribute("task");
    %>

                    <div class="col-auto">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" readonly class="form-control" id="nameRead" name="name" value="<%=task.getName()%>">
                    </div>
                    <div class="col-auto">
                        <label for="description" class="form-label">Description</label>
                        <input type="text" readonly class="form-control" id="descriptionRead" name="description" value="<%=task.getDescription()%>">
                    </div>
                    <div class="col-auto">
                        <label for="deadlinedate" class="form-label">Date</label>
                        <input type="date" readonly class="form-control" id="deadlinedateRead" name="deadlinedate" value="<%=task.getDeadlineDate()%>">
                    </div><br>
                </div>


    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editTask">
        Edit
    </button>

    <!-- Modal -->
    <form class="row g-3" action="/edit" method="post">
    <div class="modal fade" id="editTask" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Edit task</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="id" value="<%=task.getId()%>">
                        <div class="col-auto">
                            <label for="name" class="form-label">Name</label>
                            <input type="text"  class="form-control" id="name" name="name" value="<%=task.getName()%>">
                        </div>
                        <div class="col-auto">
                            <label for="description" class="form-label">Description</label>
                            <input type="text"  class="form-control" id="description" name="description" value="<%=task.getDescription()%>">
                        </div>
                        <div class="col-auto">
                            <label for="deadlinedate" class="form-label">Date</label>
                            <input type="date"  class="form-control" id="deadlinedate" name="deadlinedate" value="<%=task.getDeadlineDate()%>">
                        </div><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button type="submit" class="btn btn-primary">Сохранить</button>
                    </div>
                </div>

                </div>

         </div>
            </div>
        </div>
    </div>
    </form>
</div>
</body>
</html>
