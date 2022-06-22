package com.controller;

import com.dao.UserMapper;
import com.pojo.User;
import com.serveice.PhoneServeice;
import com.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class RegisterUserController {
    @Autowired
    PhoneServeice phoneServeice;
    @Autowired
    UserMapper userMapper;

    /** 在注册用户界面<p>已有账号？</p><a href="${PATH}/go_login">请登录</a>
     * 跳转登录 表明注册的手机号不需要，及手机号自增的最后一个需要进行删除
     */
    @RequestMapping("/go_login2")
    public String to_login(){
        //执行删除最后一个手机号
        System.out.println("执行删除最后一个手机号");
        phoneServeice.deletePhonelastOne();
        return "login";
}
/**
 * 点击注册
 */
@RequestMapping(value = "/register2_form",method = RequestMethod.GET)
public String register2_form(User user){
    System.out.println(user.toString());
    /*获取手机最后一个的id作为用户的id*/
    int i = phoneServeice.selectGetLastId();
    userMapper.insertUser(i, user.getUsername(), user.getPassword(), user.getEmail());
 return "login";
  }

@RequestMapping(value = "/check_register_user_three",method = RequestMethod.GET)
@ResponseBody
    public Message checkRegisterUser(@Valid User user, BindingResult result){
        if (result.hasErrors()){
            Map<String, Object> map = new HashMap<>();
            List<FieldError> errors = result.getFieldErrors();
            for (FieldError fieldError : errors) {
                System.out.println("错误的字段名："+fieldError.getField());
                System.out.println("错误信息："+fieldError.getDefaultMessage());
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Message.fail().model("errorFields",map);
        }
        else {
            return Message.success();
        }

    }
/**
 * 检查用户名是否被使用
 */
@RequestMapping("/check_reigster_username")
@ResponseBody
    public Message checkReigsterUsername(@RequestParam("username")String username){
    int i = userMapper.selectUserByUsername(username);
    if (i!=1){
       return Message.success();
    }else{
      return   Message.fail();
    }
 }

}