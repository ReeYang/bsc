package com.bsc.modules.taskone.yangrui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  //声明为控制器
//@RequestMapping(path = "/yangrui")  //请求映射
public class YangruiController {
    @RequestMapping("/yangrui")  //请求映射
    public String index(){
        return "yangrui/yangrui0901";
    }
}