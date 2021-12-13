<%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/29
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>登录页面</title>
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="css/amazeui.min.css">
  <link rel="stylesheet" href="css/petshow.css?6">
  <link rel="stylesheet" href="css/animate.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/amazeui.min.js"></script>
  <script src="js/countUp.min.js"></script>
  <script src="js/amazeui.lazyload.min.js"></script>
  <link rel="stylesheet" href="./css/main.css">
  <style>
    .midlle_one{
      width:610px;
      height: 250px;
      margin: 0 auto;
    }
    .midlle_one table{
      border: gray solid 0.1px;
      width: 600px;
      height: 150px;
      margin: 0 auto;
      margin-top: 20px;
    }
    .midlle_one table td{
      text-align: center;
    }

    .midlle{
      width:  840px;
      height: 300px;
      margin-top: 50px;
      padding-top: 50px;
      margin: 0 auto;
    }
  </style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>login</title>
  <link rel="stylesheet" href="css/resume.css">

  <!-- Font Awesome Icons-->
  <link rel="stylesheet" href="css/all.css">

  <!------------ Owl-Carousel ------------>
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <!--------------------- AOS Library---------------->
  <link rel="stylesheet" href="css/aos.css">

  <!--Custom Style-->
  <link rel="stylesheet" href="css/Style.css">

  <!------------- Login -------------------->
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="css/iconfont.css">
  <link rel="stylesheet" href="css/resume.css">

  <!-- Font Awesome Icons-->
  <link rel="stylesheet" href="css/all.css">

  <!------------ Owl-Carousel ------------>
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <!--------------------- AOS Library---------------->
  <link rel="stylesheet" href="css/aos.css">

  <!--Custom Style-->
  <link rel="stylesheet" href="css/Style.css">

  <!------------- Login -------------------->
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="css/iconfont.css">

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
    </div>
  </div>
</header>


<!--------------------------------Login------------------------------------------->
<div class="Login" data-aos="zoom-in" data-aos-delay="200">
  <div id="bigBox">
    <h1>LOGIN</h1>
    <form action="login" method="post">
      <div class="inputBox">
        <div class="inputText">
          <span class="iconfont icon-nickname"></span>
          <input type="text" placeholder="用户名" id="txt  ID" onkeydown="idKeyDown()" name="username">
        </div>
        <div class="inputText">
          <span class="iconfont icon-visible"></span>
          <input type="password" placeholder="密码" id="txtPWD" onkeydown="pwdKeyDown()" name="password">
        </div>
        <div class="inputText" style="margin-left: 60px">
          <span><i class="fas fa-unlock-alt"></i></span>
         <input type="text" placeholder="验证码" name="inputCode">
          <img src="validCode" width="60" height="30">
        </div>
      </div>
      <input type="checkbox" name="saveUser" style="margin-top: 15px">保存用户名和密码<br>
      <input class="loginButton" type="submit" value="登录" >
      <a href="Register.jsp"><input class="loginButton" type="text" value="注册" style = "text-align:center"></a>
    </form>
  </div>

</div>

<!--X----------------Footer----------------->

<!--Jquery Library file-->
<script src="js/Jquery3.5.1.min.js"></script>


<!------------ Owl-Carousel ------------>
<script src="js/owl.carousel.min.js"></script>




<!--------------------- AOS js Library---------------->
<script src="js/aos.js"></script>



<!--Custom Javascript file-->
<script src="js/main.js"></script>


<!--------------------- login---------------->
<script src="js/login.js"></script>


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
<script src="js/petshow.js"></script>
</body>
</html>
