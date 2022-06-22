package com.controller;

import com.pojo.User;
import com.serveice.PhoneServeice;
import com.serveice.UserServeice;
import com.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReturnPasswordController {
    @Autowired
    UserServeice userServeice;
    @Autowired
    PhoneServeice phoneServeice;

    @RequestMapping("/go_return_password")
    public String goReturnPassword(){
        return "return_password";
    }


    @RequestMapping("/get_user_by_phone")
    @ResponseBody
    public Message getUserByPhone(@RequestParam("phone")String phone){
        Integer id = phoneServeice.selectIdByPhone(phone);
        System.out.println(id);
        User user = userServeice.selectUser(id);
        System.out.println(user);
        return Message.success().model("user",user);
    }



}
