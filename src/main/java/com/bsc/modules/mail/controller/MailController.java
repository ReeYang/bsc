package com.bsc.modules.mail.controller;

import com.bsc.modules.mail.entity.Mail;
import com.bsc.modules.mail.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "mail")
public class MailController {

    @Autowired
    private MailService mailService;

    @RequestMapping(value = {"", "list"})
    private String list(Model model, Mail post) {
        List<Mail> mailList = mailService.findList(post);
        model.addAttribute("mailList", mailList);
        return "mail/list";
    }
}
