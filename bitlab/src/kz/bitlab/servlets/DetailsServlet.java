package kz.bitlab.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import kz.bitlab.db.DBManager;
import kz.bitlab.db.Task;

@WebServlet("/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Task task = DBManager.getTask(id);
        if(task !=null){
            req.setAttribute("task", task);
        }
        req.getRequestDispatcher("/details.jsp").forward(req,resp);
    }
}
