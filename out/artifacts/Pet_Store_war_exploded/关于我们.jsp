<%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/30
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<div class="am-g bdfw_nr">

  <div class="am-u-sm-12">
    <div class="bdfw_nr_block">
      <div class="bdfw_nr_block_l">
        <div class="bdfw_nr_title">宠物管理商城</div>
        <div class="bdfw_nr_brief_info">
          <span class="bdfw_nr_brief_star"><img src="img/xx.png" alt=""><img src="img/xx.png" alt=""><img src="img/xx.png" alt=""><img src="img/xx.png" alt=""><img src="img/xx.png" alt=""></span>
          <span class="bdfw_nr_brief_moreinfo">分类：宠物管理</span>
        </div>
        <div class="bdfw_nr_brief_address">地址：山的那边海的那边</div>
        <div class="bdfw_nr_brief_address">电话：9090980</div>
        <div class="bdfw_nr_smalltitle"><a href=""> 更多信息</a></div>
        <div class="bdfw_nr_brief_info_nr">
          <div class="bdfw_nr_brief_info_nr">
            <span>周&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 边：</span>
            <span>星空</span>
            <span>撒哈拉沙漠</span>
          </div>
          <div class="bdfw_nr_brief_info_nr">
            <span>营业时间：</span>
            <span>除周三外10:00-20:00 周三为休店日</span>
          </div>
          <div class="bdfw_nr_brief_info_nr">
            <span>发展历程：</span>
            <span>50年老店，历史悠久</span>
          </div>
        </div>
      </div>


      <div class="bdfw_nr_block_r">
        <a href="###"><img src="img/c.png" alt=""></a>
        <div class="bdfw_nr_block_r_info">
          <span><i class="am-icon-camera"></i> 店铺照片（12）</span>
        </div>
      </div>
    </div>
  </div>

</div>
<footer class="am_footer">
  <div class="am_footer_con">
    <div class="am_footer_link">
      <span>关于宠物管理系统</span>
      <ul>
        <li><a href="./关于我们.jsp">关于我们</a></li>
        <li><a href="./关于我们.jsp">发展历程</a></li>
        <li><a href="./关于我们.jsp">友情链接</a></li>
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