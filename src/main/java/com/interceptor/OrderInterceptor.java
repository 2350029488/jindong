package com.interceptor;

import com.controller.UserController;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@Component
public class OrderInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //登录的次数numberOfLogins
        int numberOfLogins = UserController.NUMBER_OF_LOGINS;
        System.out.println(numberOfLogins);
        if (numberOfLogins!=0){
//
            System.out.println("拦截中进行放行");
            return true;
        }else {
//
            System.out.println("拦截器进行拦截");
            request.setAttribute("InterceptorStatus","<script>\n" +
                    "\talert(\"请先登录\")\n" +
                    "</script>");
            request.getRequestDispatcher("index.jsp").forward(request,response);
            return false;
        }
    }

//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
//        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
//    }
}
