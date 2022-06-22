package com.controller;

import com.serveice.PhoneServeice;
import com.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.UUID;

@Controller
public class RegisterPhoneController {
    @Autowired
    PhoneServeice phoneServeice;

    /**
     * 经行电话号码查找是否存在
     * @param num
     * @return
     */
    @RequestMapping("/check_phone")
    @ResponseBody
    public Message check_phone(@RequestParam("num")String num){
        int select = phoneServeice.select(num);
        if (select==1){
            return Message.fail();
        }else {
            return Message.success();
        }
    }
    /**
     * 获取验证码
     */
    @RequestMapping("/verification_code")
    @ResponseBody
    public Message verification_code(){
        String substring = UUID.randomUUID().toString().substring(0, 6);
        return Message.success().model("verification",substring);
    }
    /**
     * 作为注册1的中间跳转平台，目的是让手机号在浏览器输入栏隐藏
     * @return
     */
    @RequestMapping("/platform")
    public String platform(){
        return "register2";
    }
    /**
     * 跳转注册2 并保存手机号  通过重定向发至中间平台
     */
    @RequestMapping("/go_register2")
    public String go_register2(@RequestParam("phoneNum")String phoneNum){
    phoneServeice.insertPhone(phoneNum);
      return "redirect:/platform";
    }

    /**
     * 在注册手机界面 去登录则不需要删除手机号最后一个的id
     * @return
     */
    @RequestMapping("/go_login")
    public String to_login(){
        return "login";
    }
}
