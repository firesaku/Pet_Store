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
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        获取用户输入的表单数据，即解析请求
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
        str=str.substring(0,str.length()-1);
        System.out.println(str);
        String sql="INSERT INTO pet_store.user (User_Id, User_Password, User_Name, User_RealName, IC_Type, IC_Number, User_Tel, User_Email, Register_Date, Remark) VALUES ("+str+")";
//        String sql="INSERT INTO `user`" +" VALUES" + "("+str+");";
        System.out.println(sql);
        System.out.println(resList.size());
        if(resList.size()==10){
//            注册成功
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
                String user="root";
                String password="admin";
                Connection connection = DriverManager.getConnection(url,user,password);
                System.out.println(connection);
                Statement statement=connection.createStatement();
                statement.execute(sql);
                int result=statement.executeUpdate(sql);
                System.out.println(result);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        resp.sendRedirect("Login.jsp");
            return;
        }else{
//            注册失败
            resp.sendRedirect("Register.jsp");
            return;
        }
//        注册结果
//        成功：跳转到登录界面
//        失败：跳转到注册界面
    }
}
