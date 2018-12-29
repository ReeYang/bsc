package com.bsc.modules.login.controller;

import com.bsc.common.persistence.BaseController;
import com.bsc.modules.user.entity.User;
import com.bsc.modules.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpSession;

//action层
@Controller
@SessionAttributes(value={"user"},types = {User.class})
@RequestMapping("/login")
public class LoginController extends BaseController{
    @Autowired
    UserService userService;
    /**
     * 用户登录验证
     * @param unum
     * @param upass
     * @param utype
     * @param session
     * @return
     */
    @RequestMapping("/login")
    public String login( @RequestParam("unum") String unum, @RequestParam("upass") String upass,
                         @RequestParam("utype") int utype,HttpSession session ,RedirectAttributes redirectAttributes){
        //根据账号判断用户是否存在
        String msg;
        User existUser= userService.login(unum);
        if (existUser == null ||existUser.getId()==null || existUser.getId()==' ') {
            //用户不存在
            msg = "用户不存在";
        }
        else{

            if (upass.equals(existUser.getPassword())){
                //密码正确
                msg="登陆成功";
                //根据用户的类型进行不同的封装
                switch (existUser.getType()){
                    case 1:session.setAttribute("student", existUser);break;
                    case 2:session.setAttribute("teacher", existUser);break;
                    case 3:session.setAttribute("organization", existUser);break;
                }
            }
            else{
                msg="密码错误";
            }
        }
        redirectAttributes.addFlashAttribute("msg",msg);
        return "redirect:../index.jsp";
    }

    /**
     *登出
     * @param session
     * @param sessionStatus
     * @return 返回到登陆界面
     */
    @RequestMapping("loginOut")
    public String loginOut(HttpSession session,SessionStatus sessionStatus){
        session.invalidate();
        sessionStatus.setComplete();
        return "redirect:../login.jsp";
    }
}
