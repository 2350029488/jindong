package com;

import com.pojo.ShoppingCart;
import com.pojo.User;
import com.serveice.ShoppingCartServeiceImpl;
import com.serveice.PhoneServeiceImpl;
import com.serveice.UserServeiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.FileNotFoundException;
import java.util.List;
import java.util.Random;
import java.util.UUID;

public class test {
    @Test
    public void test1(){
        ApplicationContext applicationContext
                =new ClassPathXmlApplicationContext("spring.xml");
        UserServeiceImpl userServeiceImpl = applicationContext.getBean("userServeiceImpl", UserServeiceImpl.class);
        int i = userServeiceImpl.insertUser(10,"sdasda","dadasdas","dsadadda");
        System.out.println(i);
    }
    @Test
    public void test2(){
        ApplicationContext applicationContext
                =new ClassPathXmlApplicationContext("spring.xml");
        UserServeiceImpl userServeiceImpl = applicationContext.getBean("userServeiceImpl", UserServeiceImpl.class);
        int i = userServeiceImpl.selectUserByUsernameAndPassword("11111", "11111");
        System.out.println(i);
    }
        @Test
        public void test3() {
            ApplicationContext applicationContext
                    = new ClassPathXmlApplicationContext("spring.xml");
            UserServeiceImpl userServeiceImpl = applicationContext.getBean("userServeiceImpl", UserServeiceImpl.class);
            int i = userServeiceImpl.selectUserByUsername("1111");
            System.out.println(i);
        }

    @Test
    public void test4() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        PhoneServeiceImpl phoneServeiceImpl = applicationContext.getBean("phoneServeiceImpl", PhoneServeiceImpl.class);
        int i = phoneServeiceImpl.insertPhone("13038133175");
        System.out.println(i);
    }
    @Test
    public void test5() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        PhoneServeiceImpl phoneServeiceImpl = applicationContext.getBean("phoneServeiceImpl", PhoneServeiceImpl.class);
        int select = phoneServeiceImpl.select("13038133173");
        System.out.println(select);
    }
    @Test
    public void test6() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        PhoneServeiceImpl phoneServeiceImpl = applicationContext.getBean("phoneServeiceImpl", PhoneServeiceImpl.class);
        int i = phoneServeiceImpl.deletePhonelastOne();
        System.out.println(i);
    }
    @Test
    public void test7() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        PhoneServeiceImpl phoneServeiceImpl = applicationContext.getBean("phoneServeiceImpl", PhoneServeiceImpl.class);
        int i = phoneServeiceImpl.selectGetLastId();
        System.out.println(i);
    }
    @Test
    public void test8() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        PhoneServeiceImpl phoneServeiceImpl = applicationContext.getBean("phoneServeiceImpl", PhoneServeiceImpl.class);
      int s= phoneServeiceImpl.selectIdByPhone("13038133178");
        System.out.println(s);
    }

    @Test
    public void test9() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        UserServeiceImpl userServeiceImpl = applicationContext.getBean("userServeiceImpl", UserServeiceImpl.class);
        User user = userServeiceImpl.selectUser(6);
        System.out.println(user);
    }
    @Test
    public void test10() throws FileNotFoundException {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        ShoppingCartServeiceImpl ordrServeiceImpl = applicationContext.getBean("shoppingCartServeiceImpl", ShoppingCartServeiceImpl.class);
//        FileInputStream is = new FileInputStream();
         int x=0;
         int image=1;
        for (int i = 0; i < 60; i++) {
            Random random=new Random();
            int i1 = random.nextInt(10)+1;
            String substring = UUID.randomUUID().toString().substring(0, 8);
            Random random2=new Random();
            int i2 = random2.nextInt(20);
               x=300+i2;
               image=image+1;
               image=(image%8);
//            System.out.println(image);
            int s = ordrServeiceImpl.insertOrder(new ShoppingCart(null, substring, x, i1, 2, "static/image/"+"ss"+(image+1)+".jpg"));
//            System.out.println(s);
        }
    }
        @Test
        public void test11() {
            ApplicationContext applicationContext
                    = new ClassPathXmlApplicationContext("spring.xml");
            ShoppingCartServeiceImpl ordrServeiceImpl = applicationContext.getBean("shoppingCartServeiceImpl", ShoppingCartServeiceImpl.class);
            List<ShoppingCart> shoppingCarts = ordrServeiceImpl.selectAll();
            shoppingCarts.forEach(System.out::println);
        }

    @Test
    public void test12() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        ShoppingCartServeiceImpl ordrServeiceImpl = applicationContext.getBean("shoppingCartServeiceImpl", ShoppingCartServeiceImpl.class);
        int i = ordrServeiceImpl.updateNumById(2, 20);
        System.out.println(i);
    }
    @Test
    public void test13() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        ShoppingCartServeiceImpl ordrServeiceImpl = applicationContext.getBean("shoppingCartServeiceImpl", ShoppingCartServeiceImpl.class);
        int i = ordrServeiceImpl.deleteById(30);
        System.out.println(i);
    }

    @Test
    public void test14() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        ShoppingCartServeiceImpl ordrServeiceImpl = applicationContext.getBean("shoppingCartServeiceImpl", ShoppingCartServeiceImpl.class);
        int i = ordrServeiceImpl.selectAmounts();
        System.out.println(i);
    }
    @Test
    public void test15() {
        ApplicationContext applicationContext
                = new ClassPathXmlApplicationContext("spring.xml");
        ShoppingCartServeiceImpl ordrServeiceImpl = applicationContext.getBean("shoppingCartServeiceImpl", ShoppingCartServeiceImpl.class);
      int s= ordrServeiceImpl.selectsById("10,20,30");
        System.out.println(s);
    }









}
