package kz.bitlab.servlets;

import kz.bitlab.db.DBManager;
import kz.bitlab.db.Task;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/edit")
public class EditServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Task task = DBManager.getTask(Integer.parseInt(req.getParameter("id")));
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String deadlineData = req.getParameter("deadlinedate");
        if (task != null){
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(deadlineData);
        }
        resp.sendRedirect("/home");
    }
}