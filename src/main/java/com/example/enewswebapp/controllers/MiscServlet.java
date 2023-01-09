package com.example.enewswebapp.controllers;

import com.example.enewswebapp.beans.User;
import com.example.enewswebapp.beans.Writer;
import com.example.enewswebapp.models.UserModel;
import com.example.enewswebapp.models.WriterModel;
import com.example.enewswebapp.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

    //Thang
@WebServlet(name = "MiscServlet", value = "/MiscServlet/*")
@MultipartConfig(
        fileSizeThreshold = 2 * 1024 * 1024,
        maxFileSize = 50 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)
public class MiscServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
//            case "/Editor":
//                ServletUtils.forward("/Views/vwMisc/Editor.jsp", request, response);
//                break;

            case "/Upload":
                ServletUtils.forward("/Views/vwMisc/Upload.jsp", request, response);
                break;

            default:
                ServletUtils.forward("/Views/404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();

        switch (path) {

            case "/Upload":
                postUpload(request, response);
                break;

            default:
                ServletUtils.forward("/Views/404.jsp", request, response);
                break;
        }
    }
    private void postUpload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String tieu_de = request.getParameter("tieude");
        String chu_de = request.getParameter("chude");
        String noi_dung = request.getParameter("noidung");

        Writer c = new Writer(tieu_de,chu_de,noi_dung);
        WriterModel.add(c);


        for (Part part : request.getParts()) {

            if (part.getName().equals("fuMain")) {
                String contentDisposition = part.getHeader("content-disposition");
                String[] items = contentDisposition.split(";");
                for (String s : items) {
                    String tmp = s.trim();
                    if (tmp.startsWith("filename")) {
                        int idx = tmp.indexOf("=") + 2;
                        String filename = tmp.substring(idx, tmp.length() - 1);

                        String targetDir = this.getServletContext().getRealPath("/img");
                        File dir = new File(targetDir);
                        if (!dir.exists()) {
                            dir.mkdir();
                        }
                        String destination = targetDir + "/" + filename;
                        part.write(destination);
                    }
                }
            }
        }

        ServletUtils.forward("/Views/vwMisc/Upload.jsp", request, response);
    }
}
