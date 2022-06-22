<%--
  Created by IntelliJ IDEA.
  User: 23500
  Date: 2022/5/13
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("PATH",request.getContextPath());
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>京东注册页</title>
    <link rel="stylesheet" href="${PATH}/static/css/register.css"/>
<style>
    .div_message{
        width: 180px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 170px;
        left: 610px;
        font-size: 18px;
    }
    .div_code{
        width: 280px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 260px;
        left: 610px;
        font-size: 15px;
    }
</style>
</head>
<body>
<header>
    <article>

        <div class="dh">
            <div class="huangying">欢迎注册</div>
            <img src="${PATH}/static/image/logo.png" class="hyzc"/>
        </div>
        <div class="dl">
            <p>已有账号？</p><a href="${PATH}/go_login">请登录</a>
        </div>
    </article>
</header>
<section>
    <article class="bd">

        <form action="${PATH}/go_register2" method="get" id="zhuce">
            <div class="num">
                <div class="sz">
                    <span class="one">1</span><p>…………………</p>>
                    <span class="two">2</span><p>…………………</p>>
                    <span class="three">3</span>
                </div>

                <div class="nr">
                    <span class="yzsjh"><p>验证手机号</p></span>
                    <span class="tzxx"><p>填写账号信息</p></span>
                    <span class="zccg"><p>注册成功</p></span>
                </div>
            </div>

            <div class="div_message"></div>
            <div class="div_code"></div>
            <div class="phone">
                <p class="zg">中国0086 v</p>
                <input name="phoneNum" id="check_phone" placeholder="建议使用常用手机号" ></input>
            </div>


            <div class="three4">
                <p class="zg">手机验证码</p>
                <input id="enter_confirmation_code" placeholder="输入验证码" ></input>
                <a href="javascript:void(0)"  id="verification_code" class="email">获取验证码</a>
            </div>
            <div class="next">
                <input id="next_step" type="button" value="下一步"/>
            </div>
            <div class="db">
                <span class="gs_icon"><a href="#"><img src="${PATH}/static/image/icon1.jpg" /></a></span>
                <span class="gs"><p><a href="#">个人用户注册</a></p></span>
                <div class="db">
                    <span class="gj"><p><a href="#">国际站注册</a></p></span>
                    <span class="gj_icon"><a href="#"><img src="${PATH}/static/image/icon2.jpg"/></a></span>
                </div>

            </div>
            <footer>
                <nav>
                    <ul>
                        <li class="gywm"><a href="#">关于我们</a></li>
                        <li class="lxwm"><a href="#">联系我们</a></li>
                        <li class="rczp"><a href="#">人才招聘</a></li>
                        <li class="sjrz"><a href="#">商家入驻</a></li>
                        <li class="ggfw"><a href="#">广告服务</a></li>
                        <li class="sjjd"><a href="#">手机京东</a></li>
                        <li class="yqlj"><a href="#">友情链接</a></li>
                        <li class="xslm"><a href="#">销售联盟</a></li>
                        <li class="jdsq"><a href="#">京东社区</a></li>
                        <li class="jdgy"><a href="#">京东公益</a></li>
                        <li class="yyz"><a href="#">English Site</a></li>
                    </ul>
                </nav>
                <div class="low"><p>Copyright © 2004-2018  京东JD.com 版权所有</p></div>
            </footer>
        </form>
    </article>
</section>
</body>
<script src="${PATH}/static/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
    $(function (){
        //清空元素
        $(".div_message").empty();
        $(".div_code").empty();
    })
    //设置全局验证码
    var verification;
    //全局手机判断
    var boolean;

    /*校验手机号*/
   $("#check_phone").change(function (){
       $(".div_message").text("");
      var num= this.value;
       /*先正则校验 以1开头*/
        var testphone=  /^1(3|4|5|6|7|8|9)\d{9}$/;
       if (!testphone.test(num)){
           $(".div_message").css("color","#f10808")
           $(".div_message").text("手机号格式不对");
           boolean=false;
           return boolean;
       } else {
           /*查看是否存在*/
           $.ajax({
               url:"${PATH}/check_phone",
               data:"num="+num,
               type:"GET",
               success:function (result){
                   if (result.code==200){
                       $(".div_message").css("color","#f10808")
                       $(".div_message").text("该手机号已经被注册")
                       boolean=false;
                       return boolean;
                   }else {
                       boolean=true;
                   }
               }
           })
       }
   })
/*验证码*/
    $("#verification_code").click(function (){
      if ($("#check_phone").val()!=""){
          /*先清空*/
          $("#enter_confirmation_code").val("");
          $(".div_code").text("");
          $.ajax({
              url: "${PATH}/verification_code",
              type: "GET",
              success:function (result){
                  //获取后台发来的验证码
                  verification= result.model.verification;
                  alert("验证码是:  "+verification)
              }
          })
      }else {
          alert("请输入手机号")
      }
    });

/*     提交     先验证验证码匹配不，再看手机号验证通过不*/
    $("#next_step").click(function (){
   //获取输入框中的验证码
      var input_code=  $("#enter_confirmation_code").val();
      if (input_code==verification){
          //如果验证码成功但手机不成功
          if (boolean==false||$("#check_phone").val()==""){

              alert("手机号没验证成功,请重新填写")
              $("#enter_confirmation_code").val("");//清空验证码input
              return false;
          }else {
              //都成功就提交
              $("#zhuce").submit();
          }
      } else {
          //验证码不成功
          $(".div_code").css("color","#f10808")
          $(".div_code").text("验证码错误，请重新获取")
          return  false;
      }
    })
</script>
</html>

