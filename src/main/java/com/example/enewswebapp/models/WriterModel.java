package com.example.enewswebapp.models;

import com.example.enewswebapp.beans.User;
import com.example.enewswebapp.beans.Writer;
import com.example.enewswebapp.utils.DbUtils;
import org.sql2o.Connection;

public class WriterModel {
    public static void add(Writer c) {
        String insertSql = "INSERT INTO writer (tieude, chude, noidung) VALUES (:tieude,:chude,:noidung)";

        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertSql)
                    .addParameter("tieude", c.getTieude())
                    .addParameter("chude", c.getChude())
                    .addParameter("noidung", c.getNoidung())
                    .executeUpdate();

        }
    }

}
