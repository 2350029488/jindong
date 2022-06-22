package com.serveice;

import com.dao.ShoppingCartMapper;
import com.pojo.ShoppingCart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingCartServeiceImpl implements ShoppingCartServeice {
    @Autowired
    ShoppingCartMapper shoppingCartMapper;
    @Override
    public int insertOrder(ShoppingCart order) {
      return shoppingCartMapper.insertOrder(order);
    }

    @Override
    public List<ShoppingCart> selectAll() {
        List<ShoppingCart> shoppingCarts = shoppingCartMapper.selectAll();
        return shoppingCarts;
    }

    @Override
    public int updateNumById(Integer id, Integer num) {
      return  shoppingCartMapper.updateNumById(id,num);
    }

    @Override
    public int deleteById(Integer id) {
      return  shoppingCartMapper.deleteById(id);
    }

    @Override
    public int selectAmounts() {
     return   shoppingCartMapper.selectAmounts();
    }

    @Override
    public int selectsById(String ids) {
      return   shoppingCartMapper.selectsById(ids);
    }
}
