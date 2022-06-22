package com.dao;

import org.apache.ibatis.annotations.Param;

public interface PhoneMapper {
    /*查询指定电话存不存在*/
    int select(@Param("phone")String phone);
    /*添加手机号*/
    int insertPhone(@Param("addPhone")String addPhone);
    /*删除id最大的手机号*/
    int deletePhonelastOne();
    /*获取手机号的自增id*/
    int selectGetLastId();
    /*通过电话号获取id*/
    Integer selectIdByPhone(@Param("phone")String phone);
}
