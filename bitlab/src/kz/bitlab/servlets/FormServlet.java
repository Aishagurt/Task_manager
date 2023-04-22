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

@WebServlet("/submit")
public class FormServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name = req.getParameter("name");
            String description = req.getParameter("description");
            String deadlinedate = req.getParameter("deadlinedate");
            DBManager.addTask(new Task(name,description,deadlinedate));

            resp.sendRedirect("/home");
    }
}
