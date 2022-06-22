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
    <link rel="stylesheet" href="${PATH}/static/css/register2.css"/>
</head>
<style>
    .div_username{
        width: 180px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 170px;
        left: 610px;
        font-size: 18px;
    }
    .div_password{
        width: 180px;
        height: 20px;
        margin:0 auto;
        position: absolute;
        top: 258px;
        left: 610px;
        font-size: 18px;
    }
    .div_email{
        width: 180px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 450px;
        left: 610px;
        font-size: 18px;
    }
    .div_repeat_password{
        width: 180px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 350px;
        left: 610px;
        font-size: 18px;
    }
    .div_code{
        width: 180px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 550px;
        left: 610px;
        font-size: 18px;
    }
</style>

<body>
<header>
    <article>
        <div class="dh">
            <div class="huangying">欢迎注册</div>
            <img src="${PATH}/static/image/logo.png" class="hyzc"/>
        </div>
        <div class="dl">
            <p>已有账号？</p><a href="${PATH}/go_login2">请登录</a>
        </div>
    </article>
</header>
<section>
    <article class="bd">
        <form action="${PATH}/register2_form" method="get" id="zhuce">
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
            <div class="div_username"></div>
            <div class="div_password"></div>
            <div class="div_email"></div>
            <div class="div_repeat_password"></div>
            <div class="div_code"></div>
            <div class="phone">
                <p class="zg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名</p>
                <input id="username" name="username" placeholder="你的用户名" ></input>
            </div>
            <div class="three1">
                <p class="zg">&nbsp;&nbsp;&nbsp;设置密码</p>
                <input id="password" name="password" placeholder="建议使用两种或两种以上的字符" ></input>
            </div>

            <div class="three2">
                <p class="zg">&nbsp;&nbsp;&nbsp;确认密码</p>
                <input id="sure_password" placeholder="请再次输入密码" ></input>
            </div>

            <div class="three3">
                <p class="zg">&nbsp;&nbsp;&nbsp;邮箱验证</p>
                <input id="email" name="email" placeholder="请输入邮箱" ></input>
            </div>
            <div class="three4">
                <p class="zg">邮箱验证码</p>
                <input id="enter_confirmation_code" placeholder="输入验证码" ></input>
                <a id="verification_code" href="javascript:void(0)" class="email">获取验证码</a>
            </div>

            <div class="next">
                <input id="click_to_register" type="button" value="点击注册"/>
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
        $(".div_username").empty();
        $(".div_password").empty();
        $(".div_email").empty();
        $(".div_repeat_password").empty();
        $(".div_code").empty();
    })
    /*定义三个数据验证后的状态三个状态都为true才能提交*/
    var username_status;
    var password_status;
    var email_status;
    /*定义邮箱验证码*/
    var  verification;

/*对用户的格式和是否用户名被检测的判断*/
    $("#username").mouseout(function (){
        $(".div_username").text("");
        var username=$("input[name=username]").val();
        $.ajax({
            url:"${PATH}/check_register_user_three",
            type:"GET",
            data:"username="+username,
            success:function (result){
                if (result.code==200){
                    var username_message=result.model.errorFields.username;
                    $(".div_username").css("color","#f10808")
                    $(".div_username").text(username_message);
                    username_status=false;
                    return username_status;
                }else {
                    /*格式验证成功检查用户是否被使用*/
                    $.ajax({
                        url:"${PATH}/check_reigster_username",
                        data:"username="+username,
                        type:"GET",
                        success:function (result){
                            if (result.code==200){
                                $(".div_username").css("color","#f10808")
                                $(".div_username").text("该用户名已经被使用")
                                username_status=false;
                                return username_status;
                            }else {
                                username_status=true;
                                return  username_status;
                            }
                        }
                    })
                }
            }
        })
    });

    /*对密码的格式进行判断*/
    $("#password").mouseout(function (){
        $(".div_password").text("");
        var password= $("input[name=password]").val();
        $.ajax({
            url:"${PATH}/check_register_user_three",
            type:"GET",
            data:"password="+password,
            success:function (result){
                if (result.code==200){
                    var password_message=result.model.errorFields.password;
                    $(".div_password").css("color","#f10808")
                    $(".div_password").text(password_message);
                    password_status=false;
                    return password_status;
                }else {
                    password_status=true;
                    return  password_status;
                }
            }
        })
    });

    /*对密码的重复确认*/
    $("#sure_password").mouseout(function (){
        $(".div_repeat_password").text("");
      var sure_password= this.value;
      var password= $("input[name=password]").val();
      if (sure_password!=password){
          $(".div_repeat_password").css("color","#f10808")
          $(".div_repeat_password").text("两次密码不匹配");
          password_status=false;
          return password_status;
      }else {
          password_status=true;
          return password_status;
      }

    });

/*对邮箱的格式进行判断*/
    $("#email").mouseout(function (){
        $(".div_email").text("");
        var email= $("input[name=email]").val();
        $.ajax({
            url:"${PATH}/check_register_user_three",
            type:"GET",
            data:"email="+email,
            success:function (result){
            if (result.code==200){
               var email_message=result.model.errorFields.email;
               $(".div_email").css("color","#f10808")
               $(".div_email").text(email_message);
               email_status=false;
               return email_status;
               } else {
               email_status=true;
               return  email_status;
             }
            }
        })
    });

    /*获取邮箱验证码*/
    $("#verification_code").click(function (){
        /*先清空*/
        $("#enter_confirmation_code").val("");
        $(".div_code").text("");
        $.ajax({
            url: "${PATH}/verification_code",
            type: "GET",
            success:function (result){
                //获取后台发来的验证码
                verification= result.model.verification;
                alert("验证码是:"+verification)
            }
        })
    })


/*提交表单*/
    $("#click_to_register").click(function (){
        //获取输入框中的验证码
       var get_input_email= $("#enter_confirmation_code").val();
     if (username_status==false||$("input[name=username]").val()==""){
         alert("用户有错,请再检查");
         return false;
         }else {
              if (password_status == false||$("input[name=password]").val()=="") {
                     alert("密码有错，请再次检查")
                     return false;
                }  else {
                      if (email_status==false||$("input[name=email]").val()==""){
                      alert("邮箱有错，请再次检查")
                      return false;
                      }
                           else {
                               if (get_input_email != verification) {
                               alert("验证码不一致")
                               return false;
                                }
                                   else {
                                       alert("注册成功")
                                       $("#zhuce").submit();
                      }
                  }
              }
           }
    })
</script>
</html>
