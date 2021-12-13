package com.cdu.Pet_Store.controller;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet("/img")
public class ImgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int width=1000;
        int height=800;
        BufferedImage img=new BufferedImage(width,height,BufferedImage.TYPE_INT_ARGB);
        Graphics g =img.getGraphics();

        Random random=new Random();


//      背景
        g.setColor(new Color(255,255,255,255));
        g.fillRect(0,0,width,height);
//      画图
        for (int i=0;i<50;i++){
            g.setColor(new Color(random.nextInt(256),random.nextInt(256),random.nextInt(256),random.nextInt(256)));
            int r=random.nextInt(200);
            g.fillOval(random.nextInt(width),random.nextInt(height),r,r);
        }
        resp.setHeader("refresh","1");
        ImageIO.write(img,"png",resp.getOutputStream());


    }
}
