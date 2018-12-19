package com.bsc.modules.interaction.controller;

import com.bsc.modules.interaction.entity.Interact;
import com.bsc.modules.interaction.service.InteractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
/**
 * @author YangRui
 */
@Controller
@RequestMapping(value = "interaction")
public class InteractController {
    @Autowired
    private InteractService interactService;
    @RequestMapping(value = {"/list", "/", ""})
    private String list(Model model, Interact interact) {
        List<Interact> interactList = interactService.findList(interact);
        model.addAttribute("interactList", interactList);
        return "interaction/list";
    }
    /** 查询模块详情信息
     * @param model
     * @param id
     * @return
             */
    @RequestMapping("/get/{id}")
    private String get(Model model, @PathVariable Integer id) {
        Interact interact = interactService.get(id);
        model.addAttribute("interact", interact);
        return "interaction/view";
    }
    /**
     * 删除互动
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("/del/{id}")
    private String del(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        String msg = "删除失败";
        int successNum = interactService.delete(id);
        if(successNum > 0) {
            msg = "成功删除" + successNum + "条记录";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/interaction/list";
    }
}
