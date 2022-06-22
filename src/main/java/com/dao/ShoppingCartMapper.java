package com.dao;

import com.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Param;
import org.w3c.dom.ls.LSInput;

import java.util.List;

public interface ShoppingCartMapper {
    int insertOrder(ShoppingCart order);
 List<ShoppingCart> selectAll();
 int updateNumById(@Param("id")Integer id,@Param("num")Integer num);

 int deleteById(@Param("id")Integer id);
 int selectAmounts();
 int  selectsById(@Param("ids")String ids);
}
