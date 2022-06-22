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
    <link rel="stylesheet" href="${PATH}/static/css/return_password.css"/>
<style>
    .div_message{
        width: 180px;
        height: 30px;
        margin:0 auto;
        position: absolute;
        top: 100px;
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
    .next {
        position: absolute;
        left: 610px;
        top: 200px;
        width:380px;
        height: 55px;
        margin:0 auto;
        margin-top: 50px;
        border: #999999 solid 1px;
    }
</style>
</head>
<body>

<header>
    <article>

        <div class="dh">
            <div class="huangying">找回密码</div>
            <img src="${PATH}/static/image/logo.png" class="hyzc"/>
        </div>
        <div class="dl">
            <p>记得密码？</p><a href="${PATH}/go_login">去登录</a>
        </div>
    </article>
</header>

<section>
    <article class="bd">
        <form action="${PATH}/go_register2" method="get" id="zhuce">
            <div class="div_message"></div>
<%--            <div class="div_code"></div>--%>
            <div class="three4">
                <p class="zg">中国0086 : </p>
                <input id="enter_confirmation_code" placeholder="输入手机号" ></input>
            </div>

            <div class="next">
                <input id="next_step" type="button" value="下一步"/>
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
<%--模态框--%>
<div id="modal_fade" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >手机验证</h4>
            </div>

            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-3 control-label">验证码</label>
                        <div class="col-sm-9">
                            <input type="text" name="verification_code" class="form-control" id="verification_code" placeholder="输入验证码">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <span  class="help-block col-sm-6 "></span>
                        <button id="get_verification_code" type="button" class="col-sm-6 btn btn-primary" >获取验证码</button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button id="sure_button" type="button" class="btn btn-primary" >确定</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<div id="get_password_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >找回密码</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">

                    <div class="form-group">
                        <label class="col-sm-5 control-label">用户名</label>
                        <div class="col-sm-7">
                            <%--                          修改员工的名字设置为不能改变 静态框--%>
                            <p class="form-control-static" id="get_username"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">密码</label>
                        <div class="col-sm-7">
                            <p class="form-control-static" id="get_password"></p>
                        </div>
                    </div>


                    <div class="modal-footer">
                        <button id="get_password_button" type="button" class="btn btn-primary" >确定</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="${PATH}/static/js/jquery-1.12.4.min.js"></script>
<link href="${PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<%--<script src="${PATH}/static/js/jquery-1.7.2.js"></script>--%>
<script type="text/javascript">
    $(function (){
        $(".div_message").empty();
    })

    //全局手机判断
    var boolean;
    //设置全局验证码
    var verification;
    var num;//电话号码

    /*检查手机号是否注册过*/
    $("#enter_confirmation_code").mouseout(function (){
        $(".div_message").text("");
         num=$("#enter_confirmation_code").val();
         if ($("#enter_confirmation_code").val()==""){
             $(".div_message").css("color","#f10808")
             $(".div_message").text("请输入手机号")
             boolean=false;
             return boolean;
         } else {
             $.ajax({
                 url:"${PATH}/check_phone",
                 data:"num="+num,
                 type:"GET",
                 success:function (result){
                     if (result.code==100){
                         $(".div_message").css("color","#f10808")
                         $(".div_message").text("该手机号没有注册")
                         boolean=false;
                         return boolean;
                     }else {
                         boolean=true;
                     }
                 }
             })
         }
    });
/*下一步*/
    $("#next_step").click(function (){
      if (boolean==true&&$("#enter_confirmation_code").val()!=""){
          //先清空数据
          $("#verification_code").val("")
          //出现模态框
          $('#modal_fade').modal({
              backdrop:"static",
          })

      }else {
          alert("请先验证手机号")
         return false;
      }
  });
/*获取验证码*/
    $("#get_verification_code").click(function (){
       $("#verification_code").val("");//清空输入框
        $.ajax({
            url: "${PATH}/verification_code",
            type: "GET",
            success:function (result){
                //获取后台发来的验证码
                verification= result.model.verification;
                alert("验证码是:    "+verification)
            }
        })
    })

    /*点击确定*/
    $("#sure_button").click(function (){
        //验证码匹对
      var input_code= $("#verification_code").val();
      if ($("#verification_code").val()==""){
          alert("请获取验证码")
          return false;
      }else {
          if (input_code==verification){
              /*获取手机号对应的user*/
              $.ajax({
                  url:"${PATH}/get_user_by_phone",
                  data: "phone="+num,
                  type:"GET",
                  success:function (result){
                      var username=  result.model.user.username;
                      var password= result.model.user.password;
                      $("#get_username").text(username);
                      $("#get_password").text(password);
                      $("#modal_fade").modal('hide');//关闭验证码模态框
                      $("#get_password_modal").modal({
                          backdrop:"static",
                      })
                  }
              });
          }else {
              alert("验证码验证失败，请再次输入")
              $("#verification_code").val("");//清空输入框
              return false;
          }
      }
    });
/*关闭获取密码的模态框*/
    $("#get_password_button").click(function (){
        //删掉获取框中的数据
        $("#get_username").empty();
        $("#get_password").empty();
        $("#get_password_modal").modal('hide')
    });

</script>
</html>


