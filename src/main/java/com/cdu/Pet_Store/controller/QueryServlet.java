package com.cdu.Pet_Store.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/query")
public class QueryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String sql_url = "jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
        String sql_user = "root";
        String sql_password = "admin";
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(sql_url, sql_user, sql_password);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println(connection);

//        解析请求参数
        req.setCharacterEncoding("utf-8");
        String queryString = req.getParameter("queryString");
        try {

            String sql = "select * from pet_store.pet where specis=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            String sql_queryString = queryString;
            preparedStatement.setString(1, sql_queryString);
            System.out.println(sql);
            ResultSet resultSet=preparedStatement.executeQuery();
            if (resultSet.next()) {
                System.out.println("能检索到该宠物成功");
                System.out.println("宠物ID："+resultSet.getString(1));
                System.out.println("宠物名："+resultSet.getString(2));
                System.out.println("宠物种类："+resultSet.getString(3));

            } else {
                System.out.println("检索不到这类宠物");
                resp.sendRedirect("loginPage");
                return;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }




//        登录判断
//        if(username.equals(password)){
////            保存用户名
//            session.setAttribute("username",username);
//            resp.sendRedirect("success");
//        }else{
//            resp.sendRedirect("loginPage");
//        }

    }
}
