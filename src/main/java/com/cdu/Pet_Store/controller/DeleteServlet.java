package com.cdu.Pet_Store.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String deleteID=req.getParameter("deleteID");
        System.out.println("收到的deleteID是"+deleteID);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String sql_url = "jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
            String sql_user = "root";
            String sql_password = "admin";
            Connection connection = null;
            connection = DriverManager.getConnection(sql_url, sql_user, sql_password);
            String delete_sql="delete from pet_store.trade_information where Order_Id="+"\'"+deleteID+"\'";
            System.out.println(delete_sql);
            Statement statement=connection.createStatement();
            statement.execute(delete_sql);
            int result=statement.executeUpdate(delete_sql);
            System.out.println(result);
            resp.sendRedirect("OrderCenter.jsp");
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

}
