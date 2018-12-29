package com.bsc.modules.dict.controller;

import com.bsc.modules.dict.dao.DictMapper;
import com.bsc.modules.dict.entity.Dict;
import com.bsc.modules.dict.service.DictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "dict")
public class DictController {
    @Autowired
    private DictService dictService;
    @RequestMapping(value = {"","list"})
    private String List(Model model, Dict dict){
        List<Dict>dictList=dictService.findList(dict);
        model.addAttribute("dictList",dictList);
        return"dict/list";
    }

}
