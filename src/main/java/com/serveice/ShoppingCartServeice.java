package com.serveice;

import com.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCartServeice {
    int insertOrder(ShoppingCart order);
    List<ShoppingCart> selectAll();
    int updateNumById(Integer id, Integer num);
    int deleteById(@Param("id")Integer id);
    int selectAmounts();
    int  selectsById(String ids);
}
