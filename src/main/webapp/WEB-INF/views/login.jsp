<%--
  Created by IntelliJ IDEA.
  User: 23500
  Date: 2022/5/13
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%
    pageContext.setAttribute("PATH",request.getContextPath());
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${PATH}/static/css/login.css"/>
</head>
<style>
    #p_message{
        position: absolute;
        top:50px;
        left: 20px;
        width: 150px;
        height: 35px;
        color: red;
        font-size: 18px;
        /*background: #00dfd9;*/
    }
</style>
<body>
<div class="top">
    <div class="topleft"></div>
    <div class="topright">欢迎登录</div>
</div>
<div class="maxbg">
    <div class="entry">
        <div>
            <span class="left">京东会员</span>
            <a href="${PATH}/go_register" class="right">立即注册</a>
        </div>
        <div id="p_message"></div>
        <form id="sign_form" action="${PATH}/login_form" method="get">
        <div>
            <input id="index_username" type="text" class="username"  placeholder="用户名">
            <input id="index_password" type="password" class="userpwd"  placeholder="请输入密码">
        </div>
        <div class="litlebox">
            <span class="login"><input id="input_checkbox" type="checkbox"> 自动登录</span>
            <a href="${PATH}/go_return_password" class="password">忘记密码？</a>
        </div>
         <input type="button" value="登录" class="denglu">
        </form>
    </div>
</div>
<div class="bottoms">
    <div class="tet">
        <p>关于我们 | 联系我们 | 人才招聘 | 商家入驻 | 广告服务 | 手机京东 | 友情链接 | 销售联盟 | 京东社区 | 京东公益 | English Site</p>
    </div>
    <div class="txt">
        <p>Copyright&copy;2004-2017 京东JD.com 版权所有</p>
    </div>
</div>
<%--接收返回错误参数--%>
${error}
</body>
<script src="${PATH}/static/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
    $(function (){
        $("#p_message").empty();

    })
    /*登录*/
    $(".denglu").click(function(){
       denglu_test();
    });
    /*自动登录*/
    $("#input_checkbox").click(function (){
        if ($("#input_checkbox").prop("checked")==true){
        denglu_test()
        }
    });


    /*进行用户后台检验存在与否和前端数据格式校验*/
    $("#index_username").change(function (){
        $("#p_message").text("");
         var username=this.value;
          //用户名正则，4到16位（字母，数字，下划线，减号）
         var check_username = /^[a-zA-Z0-9_-]{4,16}$/;
  if (!check_username.test(username)){
      $("#p_message").css("color","#f10808")
      $("#p_message").text("用户名格式不对");
      return false;
  }else {
      $.ajax({
          url:"${PATH}/check_username",
          data:"username="+username,
          type:"GET",
          success:function (result){
              if (result.code==200) {
                  $("#p_message").css("color", "#f10808")
                  $("#p_message").text("用户不存在")
                  return  false;
              }
          }
      })
  }
})

    /*抽取的登录的方法*/
    function denglu_test(){
        if ($("#index_username").val()==""){
            alert("警告用户不能为空")
            $("#input_checkbox").prop("checked",false)
            return false;
        }
        else if($("#index_password").val()=="")
        {
            alert('警告密码不能为空!');
            $("#input_checkbox").prop("checked",false)
            return  false;
        }
        else {
            var password= $("#index_password").val();
            var username=$("#index_username").val();
            $.ajax({
                url: "${PATH}/login",
                type: "GET",
                data: "username="+username+"&password="+password,
                success:function (result){
                    if (result.code==200){
                        alert("密码有错")
                        $("#input_checkbox").prop("checked",false)
                    }else {
                        $("#sign_form").submit();
                    }
                }
            })
        }
    }
</script>
</html>


