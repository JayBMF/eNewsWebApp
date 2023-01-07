package com.example.enewswebapp.models;

import com.example.enewswebapp.beans.User;
import com.example.enewswebapp.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

    //Thang
public class UserModel {
    public static User findByUsername(String username) {
        final String query = "select * from user where username = :username";
        try (Connection con = DbUtils.getConnection()) {
            List<User> list = con.createQuery(query)
                    .addParameter("username", username)
                    .executeAndFetch(User.class);

            if (list.size() == 0) {
                return null;
            }

            return list.get(0);
        }

    }
    public static void add(User c) {
        String insertSql = "INSERT INTO user (username, name, password, email, dob) VALUES (:username,:name,:password,:email,:dob)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertSql)
                    .addParameter("username", c.getUsername())
                    .addParameter("name", c.getName())
                    .addParameter("password", c.getPassword())
                    .addParameter("email", c.getEmail())
                    .addParameter("dob", c.getDob())
                    .executeUpdate();

        }
    }
}
