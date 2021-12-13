package com.cdu.Pet_Store.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        解析请求参数
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String inputCode = req.getParameter("inputCode");
        String saveUser = req.getParameter("saveUser");


//        保存或删除cookie
//        判断saveUser==on TODO
        Cookie cUsername=new Cookie("username",username);
        Cookie cPassword=new Cookie("password",password);
        if(saveUser!=null&&saveUser.equals("on")){
//            保存cookie
            cUsername.setMaxAge(7*24*60*60);
            cPassword.setMaxAge(7*24*60*60);
        }else{
            cUsername.setMaxAge(0);
            cPassword.setMaxAge(0);
//            cUsername.setDomain(req.getHeader("host"));
//            cUsername.setPath(req.getContextPath());
        }


        resp.addCookie(cUsername);
        resp.addCookie(cPassword);

//        服务器端的非空验证
//        TODO


//        验证验证码
//        取出已保存的验证码
        HttpSession session=req.getSession();
        String validCode=(String)session.getAttribute("validCode");
        System.out.println("输入的验证码：inputCode="+inputCode);
        System.out.println("已保存的验证码：valideCode="+validCode);
        if(!(validCode.equals(inputCode))){
            resp.getWriter().print("<script charset = \"UTF-8\">alert('ValidCode Wrong!');window.location='Login.jsp';</script>");

            return;
        }

//        验证用户名和密码

//        数据库连接
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String sql_url = "jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
            String sql_user = "root";
            String sql_password = "admin";
            Connection connection = null;
            connection = DriverManager.getConnection(sql_url, sql_user, sql_password);
            System.out.println(connection);
//            数据库【查】
            String sql = "select * from pet_store.user where User_Name=? and User_Password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            String userid = username;
            String mypassword = password;
            preparedStatement.setString(1, userid);
            preparedStatement.setString(2, mypassword);
            System.out.println(sql);
            ResultSet resultSet=preparedStatement.executeQuery();
            PrintWriter out = resp.getWriter();
            if (resultSet.next()) {
                System.out.println("登录成功");
                //数据库【增】
                String add_str_info="null,";
                for(int i=1;i<=3;i++){
                    add_str_info+="\'"+resultSet.getString(i)+"\'";
                    add_str_info+=',';
                }
                Date date = new Date();
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                System.out.println(formatter.format(date));
                add_str_info+="\'"+formatter.format(date)+"\'";
                String sql_add_user_login = "INSERT INTO pet_store.user_login Values ("+add_str_info+")";
                System.out.println(sql_add_user_login);
                Statement statement=connection.createStatement();
                statement.execute(sql_add_user_login);
                int result=statement.executeUpdate(sql_add_user_login);
                System.out.println(result);
                session.setAttribute("username",resultSet.getString(3));
                session.setAttribute("userid",resultSet.getString(1));
                resp.getWriter().print("<script charset = \"UTF-8\">alert('Login Successed!');window.location='index.jsp';</script>");
                return;
            } else {
                System.out.println("登录失败");
                resp.getWriter().print("<script charset = \"UTF-8\">alert('Login failed! Check your password or username.');window.location='Login.jsp';</script>");
                return;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}
