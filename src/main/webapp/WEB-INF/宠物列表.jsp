<%--
  Created by IntelliJ IDEA.
  User: firesaku
  Date: 2021/10/30
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>宠物列表</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/petshow.css?6">
    <link rel="stylesheet" href="css/animate.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/amazeui.lazyload.min.js"></script>
    </style>
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


<div data-am-tabs class="am-tabs am-tabs-d2 am_news_tab">

    <div class="am-tabs-bd am_bdfw">

        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
            <div class="am-g dis_line">

                <div class="am-u-sm-6 am_bdfw_block">
                    <div class="am_bdfw_block_l">
                        <div class="am_bdfw_block_l_info">
                            <div class="am_bdfw_block_l_info_l"><img src="img/d1.jpg" alt=""></div>
                            <div class="am_bdfw_block_l_info_r">
                                <a href="PetInform1.jsp"><span>宠物1 </span></a>
                                <span class="am_bdfw_block_l_info_tel"><a href="PetInform1.jsp">售价：</a>500</span>
                            </div>
                        </div>
                        <div class="am_bdfw_block_b">
                            <div> <i>●</i>描述： 1111111</div>

                        </div>
                    </div>
                    <a href="PetInform1.jsp" class="am_bdfw_block_r" ><i class="am-icon-ellipsis-v"></i> <i class="am-icon-chevron-right"></i></a>
                </div>

                <div class="am-u-sm-6 am_bdfw_block">
                    <div class="am_bdfw_block_l">
                        <div class="am_bdfw_block_l_info">
                            <div class="am_bdfw_block_l_info_l"><img src="img/d1.jpg" alt=""></div>
                            <div class="am_bdfw_block_l_info_r">
                                <a href="PetInform1.jsp"><span>宠物1 </span></a>
                                <span class="am_bdfw_block_l_info_tel"><a href="PetInform1.jsp">售价：</a>500</span>
                            </div>
                        </div>
                        <div class="am_bdfw_block_b">
                            <div> <i>●</i>描述： 1111111</div>

                        </div>
                    </div>
                    <a href="PetInform1.jsp" class="am_bdfw_block_r" ><i class="am-icon-ellipsis-v"></i> <i class="am-icon-chevron-right"></i></a>
                </div>

                <div class="am-u-sm-6 am_bdfw_block">
                    <div class="am_bdfw_block_l">
                        <div class="am_bdfw_block_l_info">
                            <div class="am_bdfw_block_l_info_l"><img src="img/c1.jpg" alt=""></div>
                            <div class="am_bdfw_block_l_info_r">
                                <a href="PetInform2.jsp"><span>宠物2 </span></a>
                                <span class="am_bdfw_block_l_info_tel"><a href="PetInform2.jsp">售价：</a>600</span>
                            </div>
                        </div>
                        <div class="am_bdfw_block_b">
                            <div> <i>●</i>描述： 1111111</div>

                        </div>
                    </div>
                    <a href="PetInform2.jsp" class="am_bdfw_block_r" ><i class="am-icon-ellipsis-v"></i> <i class="am-icon-chevron-right"></i></a>
                </div>

                <div class="am-u-sm-6 am_bdfw_block">
                    <div class="am_bdfw_block_l">
                        <div class="am_bdfw_block_l_info">
                            <div class="am_bdfw_block_l_info_l"><img src="img/c1.jpg" alt=""></div>
                            <div class="am_bdfw_block_l_info_r">
                                <a href="PetInform2.jsp"><span>宠物2 </span></a>
                                <span class="am_bdfw_block_l_info_tel"><a href="PetInform2.jsp">售价：</a>600</span>
                            </div>
                        </div>
                        <div class="am_bdfw_block_b">
                            <div> <i>●</i>描述： 1111111</div>

                        </div>
                    </div>
                    <a href="PetInform2.jsp" class="am_bdfw_block_r" ><i class="am-icon-ellipsis-v"></i> <i class="am-icon-chevron-right"></i></a>
                </div>

                <div class="am-u-sm-6 am_bdfw_block">
                    <div class="am_bdfw_block_l">
                        <div class="am_bdfw_block_l_info">
                            <div class="am_bdfw_block_l_info_l"><img src="img/c2.jpg" alt=""></div>
                            <div class="am_bdfw_block_l_info_r">
                                <a href="PetInform3.jsp"><span>宠物3 </span></a>
                                <span class="am_bdfw_block_l_info_tel"><a href="PetInform3.jsp">售价：</a>700</span>
                            </div>
                        </div>
                        <div class="am_bdfw_block_b">
                            <div> <i>●</i>描述： 1111111</div>

                        </div>
                    </div>
                    <a href="PetInform3.jsp" class="am_bdfw_block_r" ><i class="am-icon-ellipsis-v"></i> <i class="am-icon-chevron-right"></i></a>
                </div>

                <div class="am-u-sm-6 am_bdfw_block">
                    <div class="am_bdfw_block_l">
                        <div class="am_bdfw_block_l_info">
                            <div class="am_bdfw_block_l_info_l"><img src="img/c2.jpg" alt=""></div>
                            <div class="am_bdfw_block_l_info_r">
                                <a href="PetInform3.jsp"><span>宠物3 </span></a>
                                <span class="am_bdfw_block_l_info_tel"><a href="PetInform3.jsp">售价：</a>700</span>
                            </div>
                        </div>
                        <div class="am_bdfw_block_b">
                            <div> <i>●</i>描述： 1111111</div>

                        </div>
                    </div>
                    <a href="PetInform3.jsp" class="am_bdfw_block_r" ><i class="am-icon-ellipsis-v"></i> <i class="am-icon-chevron-right"></i></a>
                </div>

            </div>
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
            var IScroll = $.AMUI.iScroll;
            var myScroll = new IScroll('#wrapper', { eventPassthrough: true, click: true,scrollX: true, scrollY: false, preventDefault: false });
            $('.am_news_tab').css('min-height',$(window).height() - $('.am-topbar').height() - $('.am_footer').height());
            if ($(window).width() < 600 ) {
                $('.am_list_item_text').each(
                    function(){
                        if($(this).text().length >= 26){
                            $(this).jsp($(this).text().substr(0,26)+'...');
                        }});}

            wrapperNav();
            $(window).resize(function(){
                wrapperNav();
            });

            function wrapperNav(){

                if($(window).width() < 850 ){

                    $('.wrapper_nav').attr('id','wrapper');
                }else{
                    $('.wrapper_nav').attr('id','');
                }}


        });


    </script>
</div>
</body>
</html>

