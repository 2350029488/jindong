package com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.interceptor.OrderInterceptor;
import com.pojo.ShoppingCart;
import com.serveice.ShoppingCartServeice;
import com.utils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.print.attribute.standard.Media;
import java.util.List;

@Controller
public class ShoppingCartController {
    @Autowired
    ShoppingCartServeice shoppingCartServeice;


    /**
     * 对我的订单进行请求 通过OrderInterceptor拦截状态返回对应数据和页面
     * @return
     */
    @RequestMapping("/go_shopping_cart")
    public String order(){
        System.out.println("来到订单");
        return "cart";
    }

    /**
     * shopping_page
     */
    @ResponseBody
    @RequestMapping(value = "/shopping_page",method = RequestMethod.GET)
    public Message shoppingPage(@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        PageHelper.startPage(pn,4);
        List<ShoppingCart> shoppingCarts = shoppingCartServeice.selectAll();
        PageInfo<ShoppingCart> pageInfo=new PageInfo<>(shoppingCarts,5);
        System.out.println(pageInfo.getList());
        return Message.success().model("pageInfo",pageInfo);
    }

    /**
     * 通过点击事件修改数量和这条信息的总价格
     *
     */

    @ResponseBody
    @RequestMapping("/update_num_add")
    public Message updateNum(@RequestParam("id")Integer id, @RequestParam("num")Integer num){
        int i = shoppingCartServeice.updateNumById(id, num+1);
        System.out.println("修改"+i);
        return Message.success();
    }
    @ResponseBody
    @RequestMapping("/update_num_reduce")
    public Message updateNumReduce(@RequestParam("id")Integer id, @RequestParam("num")Integer num){
        int i = shoppingCartServeice.updateNumById(id, num-1);
        System.out.println("修改"+i);
        return Message.success();
    }

    /**
     * 通过指定shopping——id 删除一个数据
     */
 @ResponseBody
    @RequestMapping(value = "/delete_shopping_id/{shopping_id}",method = RequestMethod.DELETE)
    public Message deleteShoppingId(@PathVariable("shopping_id")Integer id){
     int i = shoppingCartServeice.deleteById(id);
     if (i==1){
         System.out.println("delete风格");
         return Message.success();
     }else {
         return  Message.fail();
     }
 }

    /**
     * select_shapping_nums 查询购物车记录数
     */
    @ResponseBody
    @RequestMapping("/select_shapping_nums")
    public Message selectShappingNums(){
        int i = shoppingCartServeice.selectAmounts();
            return Message.success().model("nums",i);
    }

    /**
     * pass_data 传递数据 来到订单页面
     * 要删除购物车中的数据
     *
     * 要把id 传递给订单表
     *
     */

    @RequestMapping("/pass_data")
    public String passData(@RequestParam("total")Integer total,@RequestParam("id_String")String ids){
        System.out.println(total);
        System.out.println(ids);
        /*1.
         * 插入到订单页面的数据
         */

        /*
        * 2.
        * */
        //执行删除操作
        int i = shoppingCartServeice.selectsById(ids);
        System.out.println(i);


        return "front_page";
    }

}
