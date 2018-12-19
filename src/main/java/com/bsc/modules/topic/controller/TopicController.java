package com.bsc.modules.topic.controller;

import com.bsc.modules.topic.entity.Topic;
import com.bsc.modules.topic.service.TopicService;
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
@RequestMapping(value = "topic")
public class TopicController {
    @Autowired
    private TopicService topicService;
    @RequestMapping(value = {"/list", "/", ""})
    private String list(Model model, Topic topic) {
        List<Topic> topicList = topicService.findList(topic);
        model.addAttribute("topicList",topicList);
        return "topic/list";
    }
    /**
     * 查询话题详情信息
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/get/{id}")
    private String get(Model model, @PathVariable Integer id) {
        Topic topic = topicService.get(id);
        model.addAttribute("topic", topic);
        return "topic/view";
    }
    /**
     * 删除话题
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("/del/{id}")
    private String del(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        String msg = "删除失败";
        int successNum = topicService.delete(id);
        if(successNum > 0) {
            msg = "成功删除" + successNum + "条记录";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/topic/list";
    }
    /**
     * 编辑（添加或修改）
     * @param model
     * @param topic
     * @return
     */
    @RequestMapping("/edit/{id}")
    private String edit(@PathVariable Integer id,Model model, Topic topic) {
        if (id != null) {
            topic = topicService.get(id);
        }
        model.addAttribute("topic", topic);
        return "topic/edit";
    }
    @RequestMapping("/add")
    public String add(Model model, Topic topic){
        topic=new Topic();
        model.addAttribute("topic",topic);
        return "topic/edit";
    }
    /**
     * 保存（添加或修改）
     * @param topic
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = {"/save","/save/{id}"})
    private String save(Topic topic,RedirectAttributes redirectAttributes) {
        String msg = "保存失败";
        int successNum = 0;
        if (topic.getId() == null) {
            successNum = topicService.insert(topic);
        } else {
            successNum = topicService.update(topic);
        }
        if (successNum > 0) {
            msg = "保存成功";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/topic/list";
    }
}
