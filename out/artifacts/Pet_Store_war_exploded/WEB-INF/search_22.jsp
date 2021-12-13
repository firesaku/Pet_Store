<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.cdu.Pet_Store.OrderInfo" %>
<%@ page import="com.cdu.Pet_Store.PetInformation" %><%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/30
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于我们</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/petshow.css?6">
    <link rel="stylesheet" href="css/animate.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/amazeui.lazyload.min.js"></script>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./package/swiper-bundle.min.css">
    <link rel="stylesheet" href="./css/favourite.css">
    <script src="./js/favourite.js"></script>
    <script src="./package/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="./css/search.css">


</head>
<body>
<header class="am-topbar am-topbar-inverse">
    <div class="amz-container">
        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
                data-am-collapse="{target: '#doc-topbar-collapse-5'}">
            <span class="am-sr-only">
                导航切换
            </span>
            <span class="am-icon-bars">
            </span>
        </button>
        <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse-5">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li class="am-active">
                    <a href="index.jsp">
                        首页
                    </a>
                </li>
                <li class="am-dropdown" data-am-dropdown="">
                    <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">
                        发现萌宠
                        <span class="am-icon-caret-down">
                        </span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li>
                            <a href=宠物分类.jsp>
                                宠物分类
                            </a>
                        </li>
                        <li>
                            <a href="宠物列表.jsp">
                                最新发布
                            </a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="用品列表.jsp">
                        宠物用品
                    </a>
                </li>
                <li>
                    <a href="宠物展示.jsp">
                        宠物展示
                    </a>
                </li>
                <li>
                    <a href="search.jsp">
                        搜索
                    </a>
                </li>
            </ul>
            <div style="width: 150px;height: 20px;float: right;margin-top: 15px;">
                <a href="UserCenter.jsp">
                    欢迎你，${sessionScope.username}
                </a>
            </div>
        </div>
    </div>
</header>
<div style="margin-top: 150px;"></div>


<%--数据库--%>
<%
    response.setContentType("text/html;charset=utf-8");
    request.setCharacterEncoding("UTF-8");

    DiskFileItemFactory factory=new DiskFileItemFactory();
    ServletFileUpload upload=new ServletFileUpload(factory);
    ArrayList resList=new ArrayList();
    List<FileItem> fileItemList = upload.parseRequest(request);
    Iterator<FileItem> iterator=fileItemList.iterator();

    while(iterator.hasNext()){
        FileItem item=iterator.next();
        if(item.isFormField()){
            System.out.println(item.getName()+": "+item.getString("UTF-8"));
            resList.add(item.getString("UTF-8"));
        }
    }
    String petType=resList.get(0).toString();
    System.out.println(petType);

    try {
//        连接数据库
        Class.forName("com.mysql.cj.jdbc.Driver");
        String sql_url = "jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
        String sql_user = "root";
        String sql_password = "admin";
        Connection connection = null;
        connection = DriverManager.getConnection(sql_url, sql_user, sql_password);
        System.out.println(connection);
//        查询
        String sql = "select * from pet_store.pet_information where Pet_Type_Name=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, petType);
        System.out.println(sql);
        ResultSet resultSet=preparedStatement.executeQuery();

        //  resultSet转List
        ArrayList list_order = new ArrayList();
        ResultSetMetaData md = resultSet.getMetaData();//获取键名
        int columnCount = md.getColumnCount();//获取行的数量
        while (resultSet.next()) {
            PetInformation petInformation=new PetInformation(resultSet.getObject(1).toString(),resultSet.getObject(2).toString(),resultSet.getObject(3).toString(),resultSet.getObject(4).toString(),resultSet.getObject(5).toString(),resultSet.getObject(6).toString(),resultSet.getObject(7).toString(),resultSet.getObject(8).toString());
            list_order.add(petInformation);
            System.out.println(petInformation.toString());
        }
        request.setAttribute("all_pet_information",list_order);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }


%>

<div class="midlle_one" >
    <table  cellpadding="25" >
        <tr style="background-color: 		#87CEFA;">
            <td>宠物ID</td>
            <td>种类名称</td>
            <td>宠物生日</td>
            <td>宠物年龄</td>
            <td>宠物重量</td>
            <td>宠物价格</td>
        </tr>
        <c:forEach items="${all_pet_information}" var="now_pet_information">
            <tr style="background-color: 		#F5F5F5;">
                <td>${now_pet_information.petId}</td>
                <td>${now_pet_information.petTypeName}</td>
                <td>${now_pet_information.petBirth}</td>
                <td>${now_pet_information.petAge}</td>
                <td>${now_pet_information.petWeight}</td>
                <td>${now_pet_information.petPrice}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<footer class="am_footer" style="position: fixed;bottom: 0;">
    <div class="am_footer_con">
        <div class="am_footer_link">
            <span>关于宠物管理系统</span>
            <ul>
                <li><a href="关于我们.jsp">关于我们</a></li>
                <li><a href="关于我们.jsp">发展历程</a></li>
                <li><a href="关于我们.jsp">友情链接</a></li>
            </ul>
        </div>


        <div class="am_footer_don">
            <dl>
                <dt><img src="./img/petlogo.png" alt=""></dt>
                <dd>一起Show我们的爱宠吧！<br><br>
                    <a href="###" class="footdon_pg ">
                        <div class="foot_d_pg am-icon-apple "> App store</div>
                    </a><a href="###" class="footdon_az animated">
                        <div class="foot_d_az am-icon-android "> Android</div>
                    </a></dd>

            </dl>
        </div>
        <div class="am_footer_erweima">
            <div class="am_footer_weixin"><img src="./img/v1.jpeg" alt="">

            </div>
            <div class="am_footer_ddon"><img src="./img/v2.jpeg" alt="">
            </div>

        </div>
    </div>
</footer>
<script>
    $(function(){
        auto_window_height();
        $(window).resize(function() {
            auto_window_height();
        });
        function auto_window_height(){
            $('.bdfw_nr').css('min-height',$(window).height() - 52 - 220);
        }
    });

</script>
</body>
</html>
