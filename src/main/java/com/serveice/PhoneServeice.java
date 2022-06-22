package com.serveice;

import org.apache.ibatis.annotations.Param;

public interface PhoneServeice {
    int select(String phone);
    int insertPhone(String addPhone);
    int deletePhonelastOne();
    int selectGetLastId();
    int selectIdByPhone(String phone);
}
