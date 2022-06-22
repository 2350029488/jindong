package com.dao;

import com.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
     int insertUser(@Param("id")Integer id,@Param("username")String username,@Param("password")String password,@Param("email")String email);
     int selectUserByUsernameAndPassword(@Param("username")String username,@Param("password")String password);

     int selectUserByUsername(@Param("username")String username);
      /*通过id查询记录*/
      User selectUser(@Param("id") Integer id);
}
