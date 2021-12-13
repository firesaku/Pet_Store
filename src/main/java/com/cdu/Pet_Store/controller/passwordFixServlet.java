package com.cdu.Pet_Store.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet("/password_fix")
public class passwordFixServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("UTF-8");

        DiskFileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload=new ServletFileUpload(factory);
        ArrayList resList=new ArrayList();
        try {
            List<FileItem> fileItemList = upload.parseRequest(req);
            Iterator<FileItem> iterator=fileItemList.iterator();

            while(iterator.hasNext()){
                FileItem item=iterator.next();
                if(item.isFormField()){
                    System.out.println(item.getName()+": "+item.getString("UTF-8"));
                    resList.add(item.getString("UTF-8"));
                }
            }
        }catch(FileUploadException e){
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str="";
        for(int i=0;i<resList.size();i++){
            str+="\'"+resList.get(i)+"\'";
            str+=',';
        }
        String new_password= (String) resList.get(0);
        String new_password2= (String) resList.get(1);
        HttpSession session=req.getSession();
        String userid = (String) session.getAttribute("userid");
        System.out.println(new_password+"----"+new_password);
        if(!new_password.equals(new_password2)){
            resp.getWriter().print("<script charset = \"UTF-8\">alert('Password is different!');window.location='PasswordFix.jsp';</script>");
            System.out.println("修改失败");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String sql_url = "jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
            String sql_user = "root";
            String sql_password = "admin";
            Connection connection = null;
            connection = DriverManager.getConnection(sql_url, sql_user, sql_password);
            String delete_sql="update pet_store.user set User_Password =\'"+new_password+"\' where User_Id="+"\'"+userid+"\'";
            System.out.println(delete_sql);
            Statement statement=connection.createStatement();
            statement.execute(delete_sql);
            int result=statement.executeUpdate(delete_sql);
            System.out.println(result);
            resp.getWriter().print("<script charset = \"UTF-8\">alert('Password fixed successfully!');window.location='Login.jsp';</script>");
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
