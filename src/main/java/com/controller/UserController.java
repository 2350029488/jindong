package com.controller;

import com.pojo.User;
import com.serveice.UserServeice;
import com.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    //登录次数
    public static int NUMBER_OF_LOGINS=0;
    @Autowired
    UserServeice userServeice;

    /**
     * 检查登录用户名是否存在
     * @param username
     * @return
     */
    @RequestMapping("/check_username")
    @ResponseBody
    public Message check_username(@RequestParam("username")String username){
        int i = userServeice.selectUserByUsername(username);
        if (i!=1) {
            return Message.fail();
        }else {
            return Message.success();
        }
    }

    /**
     * 确认密码和用户
     * @param username
     * @param password
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public Message login(@RequestParam("username")String username,@RequestParam("password")String password ){
        System.out.println(username);
        System.out.println(password);
        int i = userServeice.selectUserByUsernameAndPassword(username,password);
       if (i!=1){
           return Message.fail();
       }else {
           return Message.success();
       }
    }
    /**
     * 跳转注册 1
     */

    @RequestMapping("/go_register")
    public String go_register(){
        return "register";
    }



/**
 * login_form 登陆成功
 */
@RequestMapping("/login_form")
public String login_form(){
    NUMBER_OF_LOGINS++;
    return "../../index";
}

/**
 * 首页中查看是否登录 登录才进行总数的查询
 */
@ResponseBody
    @RequestMapping("/check_login")
    public Message checkLogin(){
    if (NUMBER_OF_LOGINS!=0){
        return Message.success();
    }else {
        return Message.fail();
    }
}
}
