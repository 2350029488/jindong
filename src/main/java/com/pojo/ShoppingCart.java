package com.pojo;

import com.mysql.cj.jdbc.Blob;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ShoppingCart {
private Integer id;
private  String commodity;//商品
private  Integer univalent;//单价
private  Integer amount;//数量
 private Integer userid;//用户id
 private String photo;//图片
}


