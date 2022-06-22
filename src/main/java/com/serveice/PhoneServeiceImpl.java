package com.serveice;

import com.dao.PhoneMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PhoneServeiceImpl implements PhoneServeice{
    @Autowired
    PhoneMapper phoneMapper;
    @Override
    public int select(String phone) {
        int select = phoneMapper.select(phone);
        return select;
    }

    @Override
    public int insertPhone(String addPhone) {
       return phoneMapper.insertPhone(addPhone);
    }

    @Override
    public int deletePhonelastOne() {
    return phoneMapper.deletePhonelastOne();
    }

    @Override
    public int selectGetLastId() {
    return   phoneMapper.selectGetLastId();
    }

    @Override
    public int selectIdByPhone(String phone) {
       return phoneMapper.selectIdByPhone(phone);
    }
}
