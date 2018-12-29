package com.bsc.modules.user.controller;

import com.bsc.common.persistence.BaseController;
import com.bsc.modules.user.entity.User;
import com.bsc.modules.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "user")
public class UserController extends BaseController{
    @Autowired
    private UserService userService;
    @RequestMapping(value = {"", "list"})
    private String list(Model model, User user) {
        List<User> userList = userService.findList(user);
        model.addAttribute("userList",userList);
        return "user/list";
    }


    /**
     * 查询user详情信息
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/get/{id}")
    private String get(Model model, @PathVariable Integer id) {
        User user = userService.get(id);
        model.addAttribute("user", user);
        return "user/detail";
    }

    /**
     * 删除user
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("/del/{id}")
    private String del(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        String msg = "删除失败";
        int successNum = userService.delete(id);
        if(successNum > 0) {
            msg = "成功删除" + successNum + "条记录";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/user/list";
    }

    /**
     * 编辑用户（添加或修改）
     * @param model
     * @param user
     * @return
     */
    @RequestMapping("/edit/{id}")
    private String edit(@PathVariable Integer id,Model model, User user) {
        if (id != null) {
            user = userService.get(id);
        }
        model.addAttribute("user", user);
        return "user/edit";
    }

    /**
     * 保存用户（添加或修改）
     * @param user
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("/save")
    private String save(HttpServletRequest request, User user, RedirectAttributes redirectAttributes){
        String str=request.getParameter("id");
        String password=request.getParameter("password");
        String nickName=request.getParameter("nickName");
        String photo=request.getParameter("photo");
        String introduction=request.getParameter("introduction");
        String tel=request.getParameter("tel");
        String wechat=request.getParameter("wechat");
        String qq=request.getParameter("qq");
        String msg="save fail!";
        int successNum=0;
        if (str != "" && str != null){
            int id=Integer.parseInt(str);
            user=userService.get(id);
            user.setPassword(password);
            user.setNickName(nickName);
            user.setPhoto(photo);
            user.setIntroduction(introduction);
            user.setTel(tel);
            user.setWechat(wechat);
            user.setQq(qq);
            successNum=userService.update(user);
        }
        else {
            successNum=userService.insert(user);
        }
        if (successNum>0){
            msg="save success!";
        }
        redirectAttributes.addFlashAttribute("msg",msg);
        return "redirect:/user/list";
    }

    /*
     *添加
     *@param model
     *@param model
     *@return
     * */
    @RequestMapping("/add")
    private String add(User user,Model model){
        user=new User();
        model.addAttribute("user",user);
        return "user/add";
    }
}
