package com.bsc.modules.taskone.zhumeijuan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  //声明为控制器
public class ZhuController {
        @RequestMapping("/zhumeijuan")  //请求映射
        public String index() {
            return "zhumeijuan/zhumeijuan0901";
        }
}
