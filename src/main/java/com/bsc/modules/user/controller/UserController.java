package com.bsc.modules.user.controller;

import com.bsc.modules.user.entity.User;
import com.bsc.modules.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"", "list"})
    private String list(Model model, User user) {
        List<User> userList = userService.findList(user);
        model.addAttribute("userList", userList);
        return "user/list";
    }
}

