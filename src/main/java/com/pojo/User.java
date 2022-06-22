package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Pattern;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer id;
    @Pattern(regexp = "^[a-zA-Z0-9_-]{4,16}$",message = "用户名格式不正确")
    private String username;
               /* 密码至少包含 数字和英文，长度6-20*/
    @Pattern(regexp = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$",message = "密码格式不正确")
    private String password;
    @Pattern(regexp = "^[a-z\\d]+(\\.[a-z\\d]+)*@([\\da-z](-[\\da-z])?)+(\\.{1,2}[a-z]+)+$",message = "邮箱不正确")
    private String email;
}
