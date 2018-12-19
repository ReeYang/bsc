package com.bsc.modules.taskone.wangxiya;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  //声明为控制器

public class WangxiyaController {

    @RequestMapping("/wangxiya") //这里是jsp的前缀名//请求映射
    private String index(){
        return "wangxiya/wangxiya0901";  //这里是jsp的目录/前缀名
    }
}
