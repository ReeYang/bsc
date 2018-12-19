package com.bsc.modules.taskone.huke.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HukeController {
    @RequestMapping("/huke")
    public String action1() {
        return "huke/huke0907001";
    }
}