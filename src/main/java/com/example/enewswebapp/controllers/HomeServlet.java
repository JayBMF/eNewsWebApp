package com.example.enewswebapp.controllers;

import com.example.enewswebapp.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/Home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path = request.getPathInfo();
    if (path == null || path.equals("/")){
        path = "/Index";
    }
    switch (path){
        case "/Index":
            ServletUtils.forward("/Views/index.jsp", request, response);
            break;
        default:
            ServletUtils.forward("/Views/404.jsp", request, response);
            break;
    }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
