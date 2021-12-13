<%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/29
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="am_user">
    <div class="am_user_head">
        <div class="am_user_head_content">
            <div class="am_user_head_l">
                <div class="am_user_head_l_ico"> <img src="img/tx.jpg" alt=""></div>
                <div class="am_user_head_l_ico_info">
                    <span class="am_user_head_l_name" >${sessionScope.username}</span>
                </div>
            </div>
            <div class="am_user_head_r">
                <div class="am_user_head_r_tag">

<span>
    <i class="am-icon-star"></i> 收藏：<span class="am_user_head_unm">6</span>
</span>
                    <span>
    <i class="am-icon-user"></i> 关注：<span class="am_user_head_unm">6</span>
</span>
                    <span>
    <i class="am-icon-heart"></i>喜欢：<span class="am_user_head_unm">60</span>
</span>
                </div>


                <div style="margin-left:60px;margin-top: 50px;">
                    <a href="PasswordFix.jsp"><button class="button2">修改密码</button></a>
                    <a href="OrderCenter.jsp"><button class="button2">查看订单</button></a>
                </div>


            </div>


        </div>
    </div>
</div>
<div class="banner_navbg">
    <div class="am-g">
        <div class="banner_nav">
            <span class="am-icon-caret-right">
                收藏：
            </span>

        </div>
    </div>
</div>
<div class="am-g am-imglist">
    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-6 am-gallery-default">
        <li>
            <div class="am-gallery-item am_list_block">
                <a href="###" class="am_img_bg">
                    <img src="img/d1.jpg" alt=""/>
                </a>

                <div class="am_listimg_info"><span class="am-icon-heart"> 132</span><span
                        class="am-icon-comments"> 67</span>
                    <span class="am_imglist_time" style="color: gold;font-size: 15px;font-weight: bold;">500元</span></div>

            </div>

        </li>
        <li>
            <div class="am-gallery-item am_list_block">
                <a href="###" class="am_img_bg">
                    <img src="img/c1.jpg" alt=""/>
                </a>

                <div class="am_listimg_info"><span class="am-icon-heart"> 155</span><span
                        class="am-icon-comments"> 87</span>
                    <span class="am_imglist_time" style="color: gold;font-size: 15px;font-weight: bold;">600元</span></div>

            </div>

        </li>
        <li>
            <div class="am-gallery-item am_list_block">
                <a href="###" class="am_img_bg">
                    <img src="img/d2.jpg" alt=""/>
                </a>

                <div class="am_listimg_info"><span class="am-icon-heart"> 132</span><span
                        class="am-icon-comments"> 67</span>
                    <span class="am_imglist_time" style="color: gold;font-size: 15px;font-weight: bold;">700元</span></div>

            </div>

        </li>
        <li>
            <div class="am-gallery-item am_list_block">
                <a href="###" class="am_img_bg">
                    <img src="img/c2.jpg" alt=""/>
                </a>

                <div class="am_listimg_info"><span class="am-icon-heart"> 132</span><span
                        class="am-icon-comments"> 67</span>
                    <span class="am_imglist_time" style="color: gold;font-size: 15px;font-weight: bold;">500元</span></div>

            </div>
        </li>
        <li>
            <div class="am-gallery-item am_list_block">
                <a href="###" class="am_img_bg">
                    <img src="img/c3.jpg" alt=""/>
                </a>

                <div class="am_listimg_info"><span class="am-icon-heart"> 132</span><span
                        class="am-icon-comments"> 67</span>
                    <span class="am_imglist_time" style="color: gold;font-size: 15px;font-weight: bold;">600元</span></div>

            </div>
        </li>
        <li>
            <div class="am-gallery-item am_list_block">
                <a href="###" class="am_img_bg">
                    <img src="img/c4.jpg" alt=""/>
                </a>

                <div class="am_listimg_info"><span class="am-icon-heart"> 132</span><span
                        class="am-icon-comments"> 67</span>
                    <span class="am_imglist_time" style="color: gold;font-size: 15px;font-weight: bold;">700元</span></div>

            </div>
        </li>


    </ul>
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
    console.log($.AMUI);
    $(function(){
        if ($(window).width() < 600 ) {
            $('.am_list_item_text').each(
                function(){
                    if($(this).text().length >= 26){
                        $(this).jsp($(this).text().substr(0,26)+'...');
                    }});}[]

    });

</script>
</body>
</html>
