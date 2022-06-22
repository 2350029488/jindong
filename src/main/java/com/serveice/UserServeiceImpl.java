package com.serveice;

import com.dao.UserMapper;
import com.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServeiceImpl implements UserServeice{
    @Autowired
    UserMapper userMapper;

    @Override
    public int insertUser(Integer id, String username, String password, String email) {
       return userMapper.insertUser(id,username,password,email);
    }

    @Override
    public int selectUserByUsernameAndPassword(String username,String password) {
       return userMapper.selectUserByUsernameAndPassword(username,password);
    }

    @Override
    public int selectUserByUsername(String username) {
        return userMapper.selectUserByUsername(username);
    }

    @Override
    public User selectUser(Integer id) {
      return  userMapper.selectUser(id);
    }
}
