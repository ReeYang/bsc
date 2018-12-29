package com.bsc.modules.post.controller;
import com.bsc.modules.post.entity.Post;
import com.bsc.modules.trade.entity.Trade;
import com.bsc.modules.post.service.PostService;
import com.bsc.modules.trade.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

//类中的所有响应方法都被映射到 /post路径下
@Controller
@RequestMapping(value = "post")
public class PostController{

    @Autowired//创建实体后直接能使用getset
    private PostService postService;
    @Autowired
    private TradeService tradeService;

    @RequestMapping(value = {"", "list"})
    private String list(Model model, Post post) {
        List<Post> postList = postService.findList(post);//返回post
        model.addAttribute("postList", postList);//往前台传数据
        return "post/list";
    }
    @RequestMapping("/get/{id}")
    private String get(Model model, @PathVariable Integer id){
        Post post=postService.get(id);
        model.addAttribute("post",post);
        return "post/details";
    }
    @RequestMapping("/del/{id}")
    private  String del(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        String msg = "删除失败";
        int successNum = postService.delete(id);
        if (successNum > 0) {
            msg = "删除成功" + successNum + "条记录";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/post/list";
    }
    /*
     * 编辑
     *@param model
     * @param post
     * @return
     * */
    @RequestMapping("/edit/{id}")//pathvariable获取id做参数
    private String edit(@PathVariable Integer id,Model model,Post post){
        if(id!=null){
            post=postService.get(id);
        }
       model.addAttribute("post",post);
        return "post/edit";
    }
    /*
    *添加
    *@param model
    *@param model
    *@return
    * */
    @RequestMapping("/add")
    private String add(Post post,Trade trade,Model model){
        post=new Post();
        trade=new Trade();
        model.addAttribute("post",post);
        model.addAttribute("trade",trade);
        return "trade/add";
    }
    /*
    * 保存
    * @param post
    * @param redirectAttritubes
    * @return
    * */
    @RequestMapping("/save")
    private String save(HttpServletRequest request,Post post,Trade trade,RedirectAttributes redirectAttributes,Model model){
        String str=request.getParameter("id");
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        String time=request.getParameter("time");
        String classify=request.getParameter("classify");
        String msg="save fail!";
        int successNum=0;
        if (str != "" && str != null){
            int id=Integer.parseInt(str);
            post=postService.get(id);
            post.setContent(content);
            post.setTitle(title);
           // post.setTime(time);
            post.setClassify(classify);
            successNum=postService.update(post);
        }
      else {
            //successNum=postService.insert(post);
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            post.setTime(df.format(new Date()));
            postService.insert(post);
            trade.setPost(post);
            successNum=tradeService.insert(trade);
        }
        if (successNum>0){
            msg="save success!";
        }
        redirectAttributes.addFlashAttribute("msg",msg);

        return "redirect:/trade/list";
    }
  /*  public String upload(Trade trade,HttpServletRequest request,Model model) throws Exception{
        //保存数据库的路径
        String sqlPath = null;
        //定义文件保存的本地路径
        String localPath="F:\\huke\\workspace\\bsc_images\\";
        //定义 文件名
        String filename=null;
        if(!trade.getFile().isEmpty()){
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-","");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType=trade.getFile().getContentType();
            //获得文件后缀名
            String suffixName=contentType.substring(contentType.indexOf("/")+1);
            //得到 文件名
            filename=uuid+"."+suffixName;
            //文件保存路径
            trade.getFile().transferTo(new File(localPath+filename));
        }
        //把图片的路径保存至数据库
        sqlPath = localPath+filename;
        //System.out.println(sqlPath);
        trade.setPhoto(sqlPath);
        //tradeService.addUser(trade);
        model.addAttribute("trade", trade);
        return "";
    }*/
}
