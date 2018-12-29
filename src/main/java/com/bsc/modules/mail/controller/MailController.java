package com.bsc.modules.mail.controller;

import com.bsc.modules.mail.entity.Mail;
import com.bsc.modules.mail.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "mail")
public class MailController {
    @Autowired
    private MailService mailService;
    @RequestMapping(value = {"", "list"})
    private String list(Model model, Mail mail) {
        List<Mail> mailList = mailService.findList(mail);
        model.addAttribute("mailList",mailList);
        return "mail/list";
    }

    @RequestMapping("/get/{id}")
    private String get(Model model, @PathVariable Integer id){
        Mail mail=mailService.get(id);
        model.addAttribute("mail",mail);
        return "mail/detail";
    }
    @RequestMapping("/del/{id}")
    private  String del(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        String msg = "删除失败";
        int successNum = mailService.delete(id);
        if (successNum > 0) {
            msg = "删除成功" + successNum + "条记录";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/mail/list";
    }

    /**
     * 编辑私信（添加或修改）
     * @param model
     * @param mail
     * @return
     */
    @RequestMapping("/edit/{id}")
    private String edit(@PathVariable Integer id,Model model, Mail mail) {
        if (id != null) {
            mail = mailService.get(id);
        }
        model.addAttribute("mail", mail);
        return "mail/edit";
    }

    /**
     * 保存私信（添加或修改）
     * @param mail
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("/save")
    private String save(HttpServletRequest request, Mail mail, RedirectAttributes redirectAttributes){
        String str=request.getParameter("id");
        String time=request.getParameter("time");
        String content=request.getParameter("content");
        String msg="save fail!";
        int successNum=0;
        if (str != "" && str != null){
            int id=Integer.parseInt(str);
            mail=mailService.get(id);
            mail.setContent(content);
            mail.setTime(time);
            successNum=mailService.update(mail);
        }
        else {
            successNum=mailService.insert(mail);
        }
        if (successNum>0){
            msg="save success!";
        }
        redirectAttributes.addFlashAttribute("msg",msg);
        return "redirect:/mail/list";
    }
}
