<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <%
    pageContext.setAttribute("PATH",request.getContextPath());
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>京东(JD.COM)-综合网购首选-正品低价、品质保障、配送及时、轻松购物！</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${PATH}/static/css/normalize.css" />
<%--    <link rel="stylesheet" href="${PATH}/static/css/base.css" />--%>
    <link rel="stylesheet" href="${PATH}/static/css/cart.css">

    <script src="${PATH}/static/js/jquery.min.js"></script>
    <script src="${PATH}/static/js/base.js"></script>
    <script src="${PATH}/static/js/cart.js"></script>
        <script type="text/javascript" src="${PATH}/static/js/jquery-1.12.4.min.js"></script>
        <link href="${PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="${PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<style>
    header {
        height: 80px;
    }
    header a {
        display: block;
        height: 80px;
    }
    .shortcut {
        background-color: #e3e4e5;
        height: 30px;
        line-height: 30px;
        border-bottom: 1px solid #ddd;
    }
    .city {
        margin-left: 200px;
    }
    .shortcut li {
        float: left;
    }
    .shortcut i {
        font-family: "icomoon";
        font-style: normal;
        color: #999;
    }
    .space {
        width: 1px;
        height: 10px;
        background-color: #ccc;
        margin: 10px 12px 0px;
    }
    .nav li {
        position: relative;
    }
    .dropdown-layer {
        position: absolute;
        width: 280px;
        height: 162px;
        top: 30px;
        left: -12px;
        background-color: #e3e4e5;
        z-index: 999;
        padding-left: 14px;
        display: none;
    }
    .dropdown-layer dl {
        float: left;
        width: 126px;
    }
    .dropdown-layer .d {
        border-bottom: 1px solid #ccc;
    }
    .m {
        background-color: #fff;
    }
    .mobile {
        position: relative;
    }
    .mobile img{
        position: absolute;
        left: -3px;
        top: 32px;
        border: 1px solid #ccc;
        padding: 3px;
    }
    .mobile i {
        position: absolute;
        top: 32px;
        left: 65px;
        width: 15px;
        height: 15px;
        line-height: 15px;
        text-align: center;
        border: 1px solid #ccc;
        border-left: 0;
        cursor: pointer;
    }
    .middle {
        height: 140px;
        position: relative;
    }
    .logo {
        position: absolute;
        top: 10px;
        left: 0px;
    }
    .logo a {
        display: block;
        text-indent: -999px;
        overflow: hidden;
        /*font-size: 0;*/
    }
    .form {
        width: 550px;
        height: 35px;
        position: absolute;
        top: 25px;
        left: 320px;
    }
    .form input {
        width: 495px;
        height: 33px;
        border: 1px solid #f10215;
        float: left;
        font-size: 14px;
        padding-left: 3px;
    }
    .form button {
        width: 50px;
        height: 35px;
        float: left;
        background-color: #f10215;
    }
    .form button i {
        font-family: "icomoon";
        font-style: normal;
        color: #fff;
    }
    .shopCar {
        width: 178px;
        height: 33px;
        line-height: 33px;
        border: 1px solid #ccc;
        position: absolute;
        top: 25px;
        right: 95px;
        background-color: #fff;
        text-align: center;
        color: #f10215;
    }
    .shopCar i {
        font-family: icomoon;
        font-style: normal;
        margin-right: 5px;
    }
    .shopCar span {
        height: 15px;
        background-color: #f10215;
        border-radius: 8px 8px 8px 0;
        position: absolute;
        top: -6px;
        left: 135px;
        font-size: 12px;
        color: #fff;
        line-height: 15px;
        padding: 0 5px;
    }
    .hotwords {
        position: absolute;
        top: 68px;
        left: 320px;
    }
    .navitems {
        width: 770px;
        height: 40px;
        line-height: 40px;
        position: absolute;
        bottom: 0;
        left: 200px;
    }
    .navitems li {
        float: left;
        margin-left: 30px;
    }
    .navitems li a {
        font-size: 16px;
        font-weight: 700;
        color: #555;
    }
    .navitems li a:hover {
        color: #f10215;
    }
    .navitems .space {
        margin: 15px -15px 0px 15px;
    }
    .super {
        position: absolute;
        bottom: 10px;
        right: 0;
    }
    footer {
        margin-top: 35px;
        height: 560px;
        background-color: #eaeaea;
    }
    footer a {
        color: #666;
    }
    .service {
        padding: 30px 0px;
        border-bottom: 1px solid #dedede;
        overflow: hidden;
    }
    .service ul li {
        width: 297px;
        height: 43px;
        position: relative;
        line-height: 43px;
        float: left;
    }
    .service li h5 {
        position: absolute;
        top: 0;
        left: 38px;
        width: 36px;
        height: 43px;
        /*background: url("../image/ico.png") no-repeat;*/
    }
    .service li:nth-child(2) h5 {
        background-position: 0 -43px;
    }
    .service li:nth-child(3) h5 {
        background-position: 0 -86px;
    }
    .service li:nth-child(4) h5 {
        background-position: bottom;
    }
    .service li p {
        font-weight: 700;
        margin-left: 82px;
    }
    .help {
        height: 200px;
        border-bottom: 1px solid #dedede;
        padding-top: 25px;
        box-sizing: border-box;
    }
    .help dl {
        width: 192px;
        float: left;
    }
    .help dt,
    .coverage h5 {
        height: 30px;
        font-size: 14px;
        color: #666;
    }
    .help dd {
        height: 22px;
    }
    .coverage {
        width: 200px;
        height: 150px;
    }
    .coverage h5 {
        padding-left: 35px;
    }
    .coverage p {
        width: 180px;
        font-size: 12px;
        color: #666;
        line-height: 18px;
    }
    .coverage a {
        display: block;
        margin-top: 5px;
        width: 180px;
        text-align: right;
    }
    .copyright {
        color: #666;
        padding-top: 20px;
        text-align: center;
        font-size: 12px;
    }
    .copyright span {
        margin: 0 10px;
    }
    .copyright div p {
        line-height: 22px;
    }
    .copyright div {
        margin-top: 22px;
    }
    .foot-icon a {
        display: inline-block;
        width: 103px;
        height: 33px;
        /*background: url("../image/ico_footer.png") no-repeat 0 -150px;*/
        margin: 20px 4px 0;
    }
    .foot-icon a:nth-child(2) {
        background-position: -103px -150px;
    }
    .foot-icon a:nth-child(3) {
        background-position: 0 -183px;
    }
    .foot-icon a:nth-child(4) {
        background-position: -103px -183px;
    }
    .foot-icon a:nth-child(5) {
        background-position: 0 -216px;
    }
    .foot-icon a:nth-child(6) {
        background-position: -103px -216px;
    }

    @media only screen and (min-width: 500px) {
        header,
        .shortcut {
            display: block;
        }
        .logo a {
            width: 190px;
            height: 120px;
            /*background: #fff url("../image/biglogo.png") no-repeat;*/
        }
    }
    @media only screen and (max-width: 323px) {
        .w {
            width: 304px;
        }
        .middle {
            width: 304px;
            height: 70px;
        }
        header,
        .shortcut {
            display: none;
        }
        .logo {
            left: 10px;
        }
        .logo a {
            width: 70px;
            height: 42px;
            /*background: #fff url("../image/smalllogo.png") no-repeat;*/
            background-size: 70px 42px;
        }
        .form {
            width: 208px;
            height: 36px;
            left: 90px;
            top: 20px;
        }
        .form input {
            width: 160px;
        }
        .form button {
            width: 40px;
        }
        .shopCar,
        .hotwords,
        .navitems,
        .super {
            display: none;
        }
    }

    /*.sssssss{*/
    /*    width: 300px;*/
    /*    height: 100px;*/
    /*    background: #1b6d85;*/
    /*}*/
</style>
<body>
    <header>
        <a href="#">
            <img src="${PATH}/static/image/header.jpg" height="80"  width="100%" alt="" >
        </a>
    </header>
    <div class="shortcut">
        <div class="w">
            <ul class="fl city">
                <li><i class="f10"></i><a href="#">北京</a></li>
            </ul>
            <ul class="fr nav">
                <li>
                    <a href="#">你好，请登录</a>
                    <a href="#" class="f10">免费注册</a>
                </li>
                <li class="space"></li>
                <li>
                    <a href="#">我的订单</a>
                </li>
                <li class="space"></li>
                <li>
                    <a href="#">我的京东</a>
                    <i></i>
                    <div class="dropdown-layer">
                        <dl class="d">
                            <dd><a href="#">待处理订单</a></dd>
                            <dd><a href="#">返修退换货</a></dd>
                            <dd><a href="#">降价商品</a></dd>
                        </dl>
                        <dl class="d">
                            <dd><a href="#">消息</a></dd>
                            <dd><a href="#">我的问答</a></dd>
                            <dd><a href="#">我的关注</a></dd>
                        </dl>
                        <dl>
                            <dd><a href="#">我的京豆</a></dd>
                            <dd><a href="#">我的白条</a></dd>
                        </dl>
                        <dl>
                            <dd><a href="#">我的优惠券</a></dd>
                            <dd><a href="#">我的理财</a></dd>
                        </dl>
                    </div>
                </li>
                <li class="space"></li>
                <li>
                    <a href="#">京东会员</a>
                </li>
                <li class="space"></li>
                <li>
                    <a href="#">企业采购</a>
                </li>
                <li class="space"></li>
                <li>
                    <a href="#">客户服务</a>
                    <i></i>
                    <div class="dropdown-layer">
                        <dl class="d">
                            <dd><a href="#">待处理订单</a></dd>
                            <dd><a href="#">返修退换货</a></dd>
                            <dd><a href="#">降价商品</a></dd>
                        </dl>
                        <dl class="d">
                            <dd><a href="#">消息</a></dd>
                            <dd><a href="#">我的问答</a></dd>
                            <dd><a href="#">我的关注</a></dd>
                        </dl>
                        <dl>
                            <dd><a href="#">我的京豆</a></dd>
                            <dd><a href="#">我的白条</a></dd>
                        </dl>
                        <dl>
                            <dd><a href="#">我的优惠券</a></dd>
                            <dd><a href="#">我的理财</a></dd>
                        </dl>
                    </div>
                </li>
                <li class="space"></li>
                <li>
                    <a href="#">网站导航</a>
                    <i></i>
                    <div class="dropdown-layer">
                        <dl class="d">
                            <dd><a href="#">待处理订单</a></dd>
                            <dd><a href="#">返修退换货</a></dd>
                            <dd><a href="#">降价商品</a></dd>
                        </dl>
                        <dl class="d">
                            <dd><a href="#">消息</a></dd>
                            <dd><a href="#">我的问答</a></dd>
                            <dd><a href="#">我的关注</a></dd>
                        </dl>
                        <dl>
                            <dd><a href="#">我的京豆</a></dd>
                            <dd><a href="#">我的白条</a></dd>
                        </dl>
                        <dl>
                            <dd><a href="#">我的优惠券</a></dd>
                            <dd><a href="#">我的理财</a></dd>
                        </dl>
                    </div>
                </li>
                <li class="space"></li>
                <li class="mobile">
                    <a href="#">手机京东</a>
                     <img src="${PATH}/static/image/mobile.png" height="60" width="60" alt="">
                     <i class="close-btn">x</i>
                </li>
            </ul>
        </div>
    </div>
    <div class="m">
        <div class="w middle">
<%--            <div class="logo">--%>
<%--            <h1>  <!-- 提高权重 便利于搜索引擎优化 -->--%>
<%--                <a href="index.html" title="京东">京东</a>--%>
<%--            </h1>--%>
<%--            </div>--%>
            <div class="form">
                <input id="text" type="text" placeholder="扫描仪">
                <button><i></i></button> 
            </div>
            <div class="shopCar">
                <i></i><a href="#" class="f10">我的购物车</a><span id="shopping_nums"></span>
            </div>
            <div class="hotwords">
                <a href="#" class="f10">199减100</a>
                <a href="#">鼠标试用</a>
                <a href="#">农资7折</a>
                <a href="#">低至29元</a>
                <a href="#">抽奖赢空调</a>
                <a href="#">记忆棉</a>
                <a href="#">坐垫</a>
                <a href="#">1分钱买油</a>
                <a href="#">智能手表</a>
            </div>
            <div class="navitems">
            <ul>
                <li><a href="list.html">秒杀</a></li>
                <li><a href="#">优惠券</a></li>
                <li><a href="#">闪购</a></li>
                <li><a href="#">拍卖</a></li>
                <li class="space "></li>
                <li><a href="#">服装城</a></li>
                <li><a href="#">京东超市</a></li>
                <li><a href="#">生鲜</a></li>
                <li><a href="#">全球购</a></li>
                <li class="space"></li>
                <li><a href="#">京东金融</a></li>
            </ul>
            </div>
            <div class="super">
                <a href="#"><img src="${PATH}/static/image/super.png" alt=""></a>
            </div>
        </div>
    </div>


    <%--注意class 不要顺便写--%>
    <div class="container">
        <%--    标题--%>
        <div class="row">
            <%--        col-md-合并列  --%>
            <div class="col-md-12">
                <h4>全部商品</h4>
            </div>
        </div>

        <%--    显示表格数据--%>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped" id="shopping_table">
                    <thead>
                    <div class="col-md-4 col-md-offset-8" id="fare">
<%--                     <h4>运费9元,还差xxx免运费</h4>--%>
                    </div>
                    <tr>
                        <th>
                            <input type="checkbox" id="check_all">
                        </th>
                        <th>商品</th>
                        <th>单价(元)</th>
                        <th>数量</th>
                        <th>小计(元)</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <%--              员工信息在tbady下的tr中--%>

                    <tbody id="shopping_table_tbody" class=".table-hover">
                    </tbody>


                </table>
            </div>
        </div>
        <%--    显示分页--%>
        <div class="row">


            <%--        分页条--%>
            <div class="col-md-6" id="page_nav_area">

            </div>

                <div class="col-md-4" id="page_info_area">


                </div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-danger  btn-lg" id="add_sure_btn">提交</button>
                </div>
        </div>
    </div>





    <footer>
        <div class="service">
            <!-- 服务模块 -->
            <div class="w">
                <ul>
                    <li>	
                        <h5></h5>
                        <p>品类齐全，轻松购物</p>
                    </li>
                    <li>	
                        <h5></h5>
                        <p>品类齐全，轻松购物</p>
                    </li>
                    <li>	
                        <h5></h5>
                        <p>品类齐全，轻松购物</p>
                    </li>
                    <li>	
                        <h5></h5>
                        <p>品类齐全，轻松购物</p>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 帮助模块 -->
        <div class="w help">
            <div class="fl">
                <dl>
                    <dt>购物指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">生活旅行</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>配送方式</dt>
                    <dd><a href="#">上门自提</a></dd>
                    <dd><a href="#">211限时达</a></dd>
                    <dd><a href="#">配送服务查询</a></dd>
                    <dd><a href="#">配送费收取标准</a></dd>
                    <dd><a href="#">海外配送</a></dd>
                </dl>
                <dl>
                    <dt>支付方式</dt>
                    <dd><a href="#">货到付款</a></dd>
                    <dd><a href="#">在线支付</a></dd>
                    <dd><a href="#">分期付款</a></dd>
                    <dd><a href="#">邮局汇款</a></dd>
                    <dd><a href="#">公司转账</a></dd>
                </dl>
                <dl>
                    <dt>售后服务</dt>
                    <dd><a href="#">售后政策</a></dd>
                    <dd><a href="#">价格保护</a></dd>
                    <dd><a href="#">退款说明</a></dd>
                    <dd><a href="#">返修/退换货</a></dd>
                    <dd><a href="#">取消订单</a></dd>
                </dl>
                <dl>
                    <dt>特色服务</dt>
                    <dd><a href="#">夺宝岛</a></dd>
                    <dd><a href="#">DIY装机</a></dd>
                    <dd><a href="#">延保服务</a></dd>
                    <dd><a href="#">京东E卡</a></dd>
                    <dd><a href="#">京东通信</a></dd>
                    <dd><a href="#">京鱼座智能</a></dd>
                </dl>
            </div>
            <div class="fr coverage">
                <h5>京东自营覆盖区县</h5>
                <p>京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
                <a href="#">查看详情 > </a>
            </div>
        </div>
        <div class="w copyright">
            <p>
                <a href="#">关于我们</a>
                <span> | </span>
                <a href="#">联系我们</a>
                <span> | </span>
                <a href="#">联系客服</a>
                <span> | </span>
                <a href="#">合作招商</a>
                <span> | </span>
                <a href="#">商家帮助</a>
                <span> | </span>
                <a href="#">营销中心</a>
                <span> | </span>
                <a href="#">手机京东</a>
                <span> | </span>
                <a href="#">友情链接</a>
                <span> | </span>
                <a href="#">销售联盟</a>
                <span> | </span>
                <a href="#">京东社区</a>
                <span> | </span>
                <a href="#">风险监测</a>
                <span> | </span>
                <a href="#">隐私政策</a>
                <span> | </span>
                <a href="#">京东公益</a>
                <span> | </span>
                <a href="#">English Site</a>
                <span> | </span>
                <a href="#">Media & IR</a>


            </p>
            <div>
                <p>京公网安备 11000002000088号<span>|</span>京ICP证070359号<span>|</span>互联网药品信息服务资格证编号(京)-经营性-2014-0008<span>|</span>新出发京零 字第大120007号</p>
                <p>互联网出版许可证编号新出网证(京)字150号<span>|</span>出版物经营许可证<span>|</span>网络文化经营许可证京网文[2014]2148-348号<span>|</span>违法和不良信息举报电话：4006561155</p>
                <p>Copyright © 2004 - 2019  京东JD.com 版权所有<span>|</span>消费者维权热线：4006067733经营证照|(京)网械平台备字(2018)第00003号<span>|</span>营业执照</p>
                <p>Global Site<span>|</span>Сайт России<span>|</span>Situs Indonesia<span>|</span>Sitio de España<span>|</span>เว็บไซต์ประเทศไทย</p>
                <p>京东旗下网站：京东钱包<span>|</span>京东云</p>
            </div>
            <p class="foot-icon">
                <a href="#"></a>
                <a href="#"></a>
                <a href="#"></a>
                <a href="#"></a>
                <a href="#"></a>
                <a href="#"></a>
            </p>
        </div>
    </footer>
</body>
<%--页面一加载就查询数据--%>
<script type="text/javascript">
    /*全局当前页*/
    var current_page;

    /*总金额*/
    var total_amount=0;
    /*全选时的总金额*/
    var  total_amount_selected=0;
   /*单个运费*/
    var single_shipping=10;

    /*初始化即页面一加载就执行*/
    $(function (){
        //默认第一页
        to_page(1);
    })
    function to_page(pn){
        /*保证数据清空再填充*/
        total_amount=0;
        total_amount_selected=0;
        single_shipping=10;
        /*切换重新加载时保证全选复选框为false*/
        $("#check_all").prop("checked",false);
        $.ajax({
            url:"${PATH}/shopping_page",
            data:"pn="+pn,
            type:"GET",
            success:function (result){
                /*数据展示*/
                shopping_list(result);
               /*分页栏*/
                build_page_column(result)
                /*先清空总数和记录数*/
                total_and_number(0,0)
                /*查询总个数*/
                select_shapping_nums();
            }
        })
    };


    /*数据展示*/
    function  shopping_list(result){
$("#shopping_table_tbody").empty();
//获取当前页作为全局变量
  current_page=result.model.pageInfo.pageNum;
    var shopping=result.model.pageInfo.list;
    $.each(shopping,function (index,item){
        var img=  $("<img>").prop("src",item.photo).css("width","51px").css("height","76px")

        <%--var img=  $("<img src='${PATH}/static/image/123456.png'>")--%>
        var inputchecked=$("<input  type='checkbox' class='check_td'>").attr("product",((item.amount)*(item.univalent))).attr("shopping_id",item.id)
        var check=$("<td></td>").append(inputchecked).append("&nbsp;&nbsp;").append(img)

        var commodityTd=$("<td></td>").append(item.commodity).css("color","#0e06e3").css("font-size","25px")
        var univalentTd=$("<td></td>").append(item.univalent).css("color","#ec630e").css("font-size","25px")


      /*组装数量*/

        //左
        var spanlift=$("<span glyphicon glyphicon-plus aria-hidden=true'></span>").append("-")
        var alift=$("<a aria-label='Previous'></a>").attr("href","#")
        alift.append(spanlift);
        var lione=$("<li></li>").append(alift).addClass("reduce_button").attr("shopping_id",item.id).attr("shopping_num",item.amount)


         //右
        var spanright=$("<span aria-hidden='true'></span>").append("+")
        var aright=$("<a aria-label='Next'></a>").attr("href","#")
        aright.append(spanright);
        var lithree=$("<li></li>").append(aright).addClass("add_button").attr("shopping_id",item.id).attr("shopping_num",item.amount)

        //中间
        var acenter=$("<a></a>").attr("href","#").append(item.amount)
        var litwo=$("<li></li>").append(acenter)
         //添加到ul nav
        var ul=$("<ul></ul>").addClass("pagination").append(lione).append(litwo).append(lithree);
        var nav=$("<nav aria-label='Page navigation'></nav>").append(ul);

        //最后添加到td中
        var amountTd=$("<td></td>").append(nav);

        /*控制数量为1时设置属性*/
        if (item.amount==1){
            lione.addClass("disabled")
        }

         // var deletebtn=$("<button></button>").append("删除").addClass("this_button").attr("shopping_id",item.id)
        var deletebtn=$("<button></button>").append("删除").addClass("this_button  btn btn-danger").attr("shopping_id",item.id)
        var totalTd=$("<td></td>").append((item.amount)*(item.univalent)).css("color","#e61919").css("font-size","25px")
        var caozuo=$("<td></td>").append(deletebtn)

       var trs= $("<tr></tr>").append(check).append(commodityTd)
            .append(univalentTd).append(amountTd).append(totalTd).append(caozuo);
           trs.appendTo("#shopping_table_tbody");

        total_amount_selected = total_amount_selected+(item.amount)*(item.univalent);
        // alert(total_amount_selected)
    })
};

    /*点击数量增加*/
    $(document).on("click",".add_button",function (){
        /** 通过自己设置的属性获取点击时这条数据的id主键*/
        var id= $(this).attr("shopping_id");
        //获取点击这条数据的数量
        var num= $(this).attr("shopping_num")
        $.ajax({
            url: "${PATH}/update_num_add",
            type: "GET",
            data:"id="+id+"&num="+num,
            success:function (result){
                if (result.code==100){
                    //修改成功重新加载当前页
                    $("#check_all").prop("checked",false);
                    to_page(current_page)
                }
            }
        })
    })

    /*点击数量减少*/
    $(document).on("click",".reduce_button",function (){
        /** 通过自己设置的属性获取点击时这条数据的id主键*/
        var id= $(this).attr("shopping_id");
        //获取点击这条数据的数量
        var num= $(this).attr("shopping_num")
        if (num==1){//当数字为1时不能点击
            return false;
        }else {
            $.ajax({
                url: "${PATH}/update_num_reduce",
                type: "GET",
                data:"id="+id+"&num="+num,
                success:function (result){
                    if (result.code==100){
                        $("#check_all").prop("checked",false);
                        //修改成功重新加载当前页
                        to_page(current_page)
                    }
                }
            })
        }
    });


    /*分页栏*/
    function build_page_column(result){
        $("#page_nav_area").empty();
        /*左边*/
        var ul = $("<ul></ul>").addClass("pagination");
        var front_page=$("<li></li>").append($("<a>首页</a>").attr("href","#"));
        var left_page= $("<li></li>").append($("<span></span>").append("&laquo;"));
//如果没有前一页设置不能点击
        if (result.model.pageInfo.hasPreviousPage==false){
            front_page.addClass("disabled");
            left_page.addClass("disabled");
        }else {
//点击首页
            front_page.click(function (){
                to_page(1)
            });
//点击去前一页
            left_page.click(function (){
                to_page(result.model.pageInfo.pageNum-1);
            })
        };
        ul.append(front_page).append(left_page);
        /** 遍历导航栏*/
        $.each(result.model.pageInfo.navigatepageNums,function (index,item){
            var li_page=$("<li></li>").append($("<a></a>").attr("href","#").append(item));
//等于当前页添加css
            if (result.model.pageInfo.pageNum==item){
                li_page.addClass("active");
            }
//给页面每一个按钮设置点击事件
            li_page.click(function (){
                to_page(item)
            })
            ul.append(li_page)
        })
        /*右边*/
        var last_page=$("<li></li>").append($("<a>末页</a>").attr("href","#"));
        var right_page=  $("<li></li>").append($("<span></span>").append("&raquo;"));
        if (result.model.pageInfo.hasNextPage==false){
            last_page.addClass("disabled");
            right_page.addClass("disabled");
        }else {
            last_page.click(function (){
                to_page(result.model.pageInfo.pages)
            });
            right_page.click(function (){
                to_page(result.model.pageInfo.pageNum+1);
            })
        }
        ul.append(right_page).append(last_page);
        var nav=$("<nav></nav>").append(ul);
        nav.appendTo("#page_nav_area")
    }



    /*全选全不选*/
    $("#check_all").click(function (){
        // total_amount=0//保证数据不冲突增加
        $("#page_info_area").empty();

        var check_all_status= $(this).prop("checked")
        $(".check_td").prop("checked",check_all_status);
        if (check_all_status==true){

            total_and_number(4,total_amount_selected);
        }else {
            total_amount=0//保证数据不冲突增加
            total_and_number(0,0);
        }

    });
    /*单选*/
    $(document).on("click",".check_td",function (){

    /*先对全选复选框的状态做判断 为true时。全选，在全选时点击某个取消 先保持全选状态，数字从总数减*/

        if ($("#check_all").prop("checked")==true){

            if ($(this).prop("checked")==false){
                var thisnum2=$(this).attr("product")
                total_amount=(Number(total_amount_selected)-Number(thisnum2));//全选状态后从总数减
            }
        }
        else {//全选状态没有选中
            //如果当前选中就执行++操作   注意是当前
            if ($(this).prop("checked")==true){
                var thisnum1=$(this).attr("product")
                total_amount=(Number(total_amount)+Number(thisnum1));
            }else {//当前没有选中就执行--
                var thisnum2=$(this).attr("product")
                total_amount=(Number(total_amount)-Number(thisnum2));
            }
        }
//当全部获取时 全选也设置 一定要在执行数字操作之后
        var blooean=$(".check_td:checked").length==$(".check_td").length
        $("#check_all").prop("checked",blooean)
        /**执行方法方法*/
        total_and_number($(".check_td:checked").length, total_amount);

    });

    /*总共钱数和选中个数*/
   function total_and_number(num,total){
       $("#fare").empty();
      $("#page_info_area").empty();

      /**选中个数计算运费*/
      var check_num= $(".check_td:checked").length
      var freight=Number(check_num)*Number(single_shipping)

       //总金额加运费
       var total_freight=total+freight;

       /*超过3000免运费*/
      var nums=3000;
      var spread=nums-total_freight;//还差多少免运费

      if (spread>0){//说明没有到免运费 总价格需要加上运费
          //给数据单独设置一个span
          var span_total= $("<span></span>").addClass("total_nums").append(total_freight).css("color","#e01222");
          var h3= $("<h3></h3>").append("已选择:"+num+"件商品"+","+"总共:").append(span_total).append("元").css("color","#75767b")
          h3.appendTo("#page_info_area")
          var h4= $("<h4></h4>").append("运费"+freight+"元，还差"+spread+"免运费").css("color","#a80000")
          h4.appendTo("#fare")
      }
      else {//免运费 总价格不需要需要加上运费
          var span_totals= $("<span></span>").addClass("total_nums").append(total).css("color","#e01222");
          var h3= $("<h3></h3>").append("已选择:"+num+"件商品"+","+"总共:").append(span_totals).append("元").css("color","#75767b")
          h3.appendTo("#page_info_area")
          var h4= $("<h4></h4>").append("免运费").css("color","#001ba8")
          h4.appendTo("#fare")
      }
   };

   /*点击删除*/
    $(document).on("click",".this_button",function (){
     var shopping_id=$(this).attr("shopping_id");

     if (confirm("确定删除？")){
         $.ajax({
                  /*restful风格*/
             url:"${PATH}/delete_shopping_id/"+shopping_id,
             type:'POST',
             data:'_method=DELETE',
             success:function (result){
                  if (result.code==100){
                      to_page(current_page);
                  }
             }
         })
     }
    });

    /*查询总个数*/
  function  select_shapping_nums(){
      $("#shopping_nums").text("");
      $.ajax({
          url:"${PATH}/select_shapping_nums",
          type:"GET",
          success:function (result){
              var shopping_cart_nums=result.model.nums;
              $("#shopping_nums").text(shopping_cart_nums)
          }

      })
  };

  /*点击提交*/
    $("#add_sure_btn").click(function (){
        var id_String ="";
        if ($(".check_td:checked").length==0){
            alert("请选择在提交")
        }else {
            $.each($(".check_td:checked"),function (){
                var id=$(this).attr("shopping_id");//通过自定义属性获取id
                id_String+=id+',';
            })
            id_String=id_String.substring(0,id_String.length-1);

            var total=$(".total_nums").text();
            window.location.href = "${PATH}/pass_data?total="+total+"&id_String="+id_String;
        }


    })


</script>
</html>