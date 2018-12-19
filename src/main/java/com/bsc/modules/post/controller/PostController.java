package com.bsc.modules.post.controller;
import com.bsc.modules.post.entity.Post;
import com.bsc.modules.post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;
//类中的所有响应方法都被映射到 /post路径下
@Controller
@RequestMapping(value = "post")
public class PostController{

    @Autowired//创建实体后直接能使用getset
    private PostService postService;

    @RequestMapping(value = {"", "list"})
    private String list(Model model, Post post) {
        List<Post> postList = postService.findList(post);//返回post
        model.addAttribute("postList", postList);//往前台传数据
        return "post/list";
    }
}

