<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="com.cdu.Pet_Store.PetInformation" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.cdu.Pet_Store.Supply" %><%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/29
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>购买界面</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/petshow.css?6">
    <link rel="stylesheet" href="css/animate.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/amazeui.lazyload.min.js"></script>


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



<%--数据库--%>
<%
    response.setContentType("text/html;charset=utf-8");
    request.setCharacterEncoding("UTF-8");
    String petId=request.getParameter("petId");
    System.out.println(petId);

    try {
//        连接数据库
        Class.forName("com.mysql.cj.jdbc.Driver");
        String sql_url = "jdbc:mysql://localhost:3306/pet_store?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
        String sql_user = "root";
        String sql_password = "admin";
        Connection connection = null;
        connection = DriverManager.getConnection(sql_url, sql_user, sql_password);
        System.out.println(connection);
//        查询宠物信息表
        String sql = "select * from pet_store.pet_information where Pet_Id=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, petId);
        System.out.println(sql);
        ResultSet resultSet=preparedStatement.executeQuery();

        //  resultSet转List
        ArrayList list_order = new ArrayList();
        ResultSetMetaData md = resultSet.getMetaData();//获取键名
        PetInformation petInformation=null;
        while (resultSet.next()) {
            petInformation=new PetInformation(resultSet.getObject(1).toString(),resultSet.getObject(2).toString(),resultSet.getObject(3).toString(),resultSet.getObject(4).toString(),resultSet.getObject(5).toString(),resultSet.getObject(6).toString(),resultSet.getObject(7).toString(),resultSet.getObject(8).toString());
            list_order.add(petInformation);
            System.out.println(petInformation.toString());
        }
        request.setAttribute("all_pet_information",list_order);

//        增加交易信息表

        Date date = new Date();
        SimpleDateFormat orderId = new SimpleDateFormat("yyyyMMddHHmmss");
        SimpleDateFormat orderMakeTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String buyerId=session.getAttribute("userid").toString();
        String add_str_info="\'"+orderId.format(date)+"\',"+"\'"+petInformation.getPetTypeName()+"\',"+"\'"+1+"\',"+"\'"+petInformation.getPetPrice()+"\',"+"\'"+orderMakeTime.format(date)+"\',"+"\'"+buyerId+"\',"+"\'"+"none"+"\'";

        String sql_add_trade_information = "INSERT INTO pet_store.trade_information Values ("+add_str_info+")";
        System.out.println(sql_add_trade_information);
        Statement statement=connection.createStatement();
        statement.execute(sql_add_trade_information);
        session.setAttribute("orderId",orderId.format(date));
        session.setAttribute("price",petInformation.getPetPrice());
        session.setAttribute("orderMakeTime",orderMakeTime.format(date));


    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }


%>

<div class="am-g bdfw_nr">

    <div class="am-u-sm-12">

        <c:forEach items="${all_pet_information}" var="now_pet_information">
            <div class="bdfw_nr_block">
                <div class="bdfw_nr_block_l">
                    <div class="bdfw_nr_title">商品名称：${now_pet_information.petTypeName}</div>
                    <div class="bdfw_nr_brief_info">
                        <span class="bdfw_nr_brief_moreinfo">订单号：${sessionScope.orderId}</span>
                    </div>
                    <div class="bdfw_nr_brief_address">数量：1</div>
                    <div class="bdfw_nr_brief_address">价格：<div style="color: gold;font-size: 24px;font-weight: bold;">${now_pet_information.petPrice}</div></div>
                    <div class="bdfw_nr_smalltitle">更多信息</div>
                    <div class="bdfw_nr_brief_info_nr">
                        <div class="bdfw_nr_brief_info_nr">
                            <span>创建时间：</span>
                            <span>${sessionScope.orderMakeTime}</span>
                        </div>
                    </div>
                </div>
                <div class="bdfw_nr_block_r">

                    <div class="bdfw_nr_block_r_info">
                        <div style="margin-top: 200px;"><a href="UserCenter.jsp"><button class="button1">确认付款</button></a></div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

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
