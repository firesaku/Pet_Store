<%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/30
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>物品信息</title>
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

<div class="am_tuya">
    <div class="am_tuya_user">
        <div class="am_tuya_user_info">
            <div class="am_tuya_user_info_name">用品：</div>

        </div>
    </div>

    <div class="am_tuya_content">
        <div class="am_tuya_content_l">
            <div class="am_albums">
                <img src="img/gouliang.jpeg" alt="">
            </div>
            <div class="am_tuya_more">
                <div class="am_tuya_oneword">描述：精品狗粮</div>
                <div class="am_tuya_comment">
                    <div class="am_tuya_comment_user">
                        <div class="am_tuya_comment_user_l">
                            <img src="img/kj.png" alt="">用户1  <span>  •  三个月前</span>
                        </div>

                        <div class="am_tuya_comment_text">好看，想买</div>
                    </div>
                </div>
                <div class="am_tuya_comment">
                    <div class="am_tuya_comment_user">
                        <div class="am_tuya_comment_user_l">
                            <img src="img/kj.png" alt="">用户1  <span>  •  三个月前</span>
                        </div>

                        <div class="am_tuya_comment_text">好看，想买</div>
                    </div>
                </div>
                <div class="am_tuya_comment">
                    <div class="am_tuya_comment_user">
                        <div class="am_tuya_comment_user_l">
                            <img src="img/kj.png" alt="">用户1  <span>  •  三个月前</span>
                        </div>

                        <div class="am_tuya_comment_text">好看，想买</div>
                    </div>
                </div>
                <div class="am_tuya_comment">
                    <div class="am_tuya_comment_user">
                        <div class="am_tuya_comment_user_l">
                            <img src="img/kj.png" alt="">用户1  <span>  •  三个月前</span>
                        </div>

                        <div class="am_tuya_comment_text">好看，想买</div>
                    </div>
                </div>



            </div>

        </div>
        <div class="am_tuya_content_r">
            <ul class="am_tuya_r_info">
                <li><i class="am-icon-heart"></i><span>10 人喜欢</span></li>
                <li><i class="am-icon-comments"></i><span>4 条讨论</span></li>
                <li><i class="am-icon-eye"></i><span>126 次查看</span></li>
                <li><i class="am-icon-clock-o"></i><span>发布 2021.10.12</span></li>
            </ul>
            <ul class="am_tuya_tag">
                <li><span class="am_tuya_tag_title">价格：</span></li>
                <li><a href=""><span>狗粮</span>
                    <span style="color: gold;font-size: 24px;font-weight: bold;">120</span>
                </a></li>

            </ul>
            <div class="page_hot">
                <div><a href="BuyItem.jsp?supplyId=C01"><button class="button1">购买</button></a></div>
            </div>
        </div>
    </div>
</div>


<footer class="am_footer" >
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
