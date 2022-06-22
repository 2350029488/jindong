package com.serveice;

import com.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserServeice {
    int insertUser(Integer id,String username,String password,String email);
    int selectUserByUsernameAndPassword(String username,String password);
    int selectUserByUsername(String username);
    User selectUser( Integer id);
}
