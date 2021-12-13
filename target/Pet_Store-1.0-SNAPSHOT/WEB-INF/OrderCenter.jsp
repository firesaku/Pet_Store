<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/29
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import= "com.cdu.Pet_Store.* "%>
<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户中心</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/petshow.css?6">
    <link rel="stylesheet" href="css/animate.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/amazeui.lazyload.min.js"></script>
    <link rel="stylesheet" href="css/order.css">
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
<%
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
//    数据查询订单
    String user_id=(String) session.getAttribute("userid");
    String sql = "select * from pet_store.trade_information where Buyer_Id=?";
    PreparedStatement preparedStatement = connection.prepareStatement(sql);
    String userid = user_id;
    preparedStatement.setString(1, userid);
    System.out.println(sql);
    ResultSet resultSet=preparedStatement.executeQuery();
//  resultSet转List


    ArrayList list_order = new ArrayList();
    ResultSetMetaData md = resultSet.getMetaData();//获取键名
    int columnCount = md.getColumnCount();//获取行的数量
    while (resultSet.next()) {
        OrderInfo orderinfo=new OrderInfo(resultSet.getObject(1).toString(),resultSet.getObject(2).toString(),resultSet.getObject(3).toString(),resultSet.getObject(4).toString(),resultSet.getObject(5).toString(),resultSet.getObject(6).toString(),resultSet.getObject(7).toString());
        list_order.add(orderinfo);
        System.out.println(orderinfo.toString());
        orderinfo.getOrder_Id();
    }
    OrderInfo now_orderinfo= (OrderInfo) list_order.get(0);
    System.out.println(now_orderinfo.getOrder_Id()+"-"+now_orderinfo.getOrder_Num()+"-"+now_orderinfo.getBuyer_Id());
    request.setAttribute("all_list_order",list_order);
%>



<div style="width: 100%;height: 70px;">
    <p style="text-align: center;font-size: 30px;">宠物订单</p>
</div>


<div class="content">
    <div class="glass">
        <table  cellpadding="10" >
            <tr >
                <td>订单ID</td>
                <td>商品名称</td>
                <td>数量</td>
                <td>单价</td>
                <td>订单时间</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${all_list_order}" var="now_orderinfo">
                <tr>
                    <td>${now_orderinfo.order_Id}</td>
                    <td>${now_orderinfo.supply_Name}</td>
                    <td>${now_orderinfo.order_Num}</td>
                    <td>${now_orderinfo.order_Price}</td>
                    <td>${now_orderinfo.order_MakeTime}</td>
                    <td><a href="delete?deleteID=${now_orderinfo.order_Id}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<%--<div style="margin-top: 100px;"></div>--%>
<%--<div style="width: 100%;height: 70px;">--%>
<%--    <p style="text-align: center;font-size: 30px;">宠物用品订单</p>--%>
<%--</div>--%>

<%--<div class="content">--%>
<%--    <div class="glass">--%>
<%--        <table  cellpadding="10" >--%>
<%--            <tr >--%>
<%--                <td>用品ID</td>--%>
<%--                <td>用品种类</td>--%>
<%--                <td>用品名称</td>--%>
<%--                <td>选择操作</td>--%>
<%--            </tr>--%>
<%--            <tr >--%>
<%--                <td>c语言</td>--%>
<%--                <td>周三</td>--%>
<%--                <td>李四</td>--%>
<%--                <td><a href="">删除</a></td>--%>
<%--            </tr>--%>
<%--            <tr >--%>
<%--                <td>R语言</td>--%>
<%--                <td>周三</td>--%>
<%--                <td>李</td>--%>
<%--                <td><a href="">删除</a></td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </div>--%>

<%--</div>--%>
<footer class="am_footer"  style="position: fixed;bottom: 0;">
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
    console.log($.AMUI);
    $(function(){
        if ($(window).width() < 600 ) {
            $('.am_list_item_text').each(
                function(){
                    if($(this).text().length >= 26){
                        $(this).html($(this).text().substr(0,26)+'...');
                    }});}[]

    });

</script>
</body>
</html>
