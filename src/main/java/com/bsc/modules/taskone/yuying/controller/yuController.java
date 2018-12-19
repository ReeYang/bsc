package com.bsc.modules.taskone.yuying.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  //声明为控制器

public class yuController {
    @RequestMapping( "/yuying")  //请求映射
    public String index(){
        return "/yuying0901/yuying0901";
    }
}
