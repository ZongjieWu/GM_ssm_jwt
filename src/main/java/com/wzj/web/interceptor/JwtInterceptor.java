package com.wzj.web.interceptor;

import com.wzj.util.JwtUtils;
import io.jsonwebtoken.Claims;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JwtInterceptor implements HandlerInterceptor {
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
    }

    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("进入过滤器");
        System.out.println("进入过滤器");
        System.out.println("进入过滤器");
        //获取请求路径
        //        String url = request.getRequestURI();
        //前端请求必须在请求头中带Authorization
        String jwt = request.getHeader("Authorization");
        //获得realIP，用于白名单或黑名单，这是我配了Nginx，把真实的IP写到请求头里面了，这里可以不管
        if (jwt == null) {
            //这里应该用自定义异常
            response.getWriter().write("未登录，请重新登录后操作");
            return false;
        } else {
            Claims c = JwtUtils.parseJWT(jwt);
            System.out.println(c.get("loginId"));
            if(System.currentTimeMillis()>Long.valueOf(c.get("exp").toString())){
                System.out.println("请求有效时间内");
            }else{
                System.out.println("请求超时哦！");
            }
            //拿到自定义的角色数组
//            List<Integer> list = (List<Integer>) c.get("roles");
//            if (list == null || list.size() < 1) {
//                throw new Exception("用户没有权限");
//            }

            //走到这里说明在方法和类上都没有权限注解，直接放行
        }
        return true;
    }
}
