package kz.bitlab.servlets;



import kz.bitlab.db.DBManager;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import java.io.IOException;



@WebServlet(value = "/home")

public class HomeServlet extends HttpServlet {

    @Override

    protected void doGet(HttpServletRequest request,

                         HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("tasks", DBManager.getAllTasks());
        request.getRequestDispatcher("/home.jsp").forward(request,response);
    }

}
