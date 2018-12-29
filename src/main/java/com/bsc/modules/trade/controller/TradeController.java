package com.bsc.modules.trade.controller;
import com.bsc.modules.trade.entity.Trade;
import com.bsc.modules.trade.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "trade")
public class TradeController {

    @Autowired
    private TradeService tradeService;

    @RequestMapping(value = {"", "list"})
    private String list(Model model, Trade trade) {
        List<Trade> tradeList = tradeService.findList(trade);
        model.addAttribute("tradeList", tradeList);
        return "trade/list";
    }
    @RequestMapping("/get/{id}")
    private String get(Model model, @PathVariable Integer id){
        Trade trade=tradeService.get(id);
        model.addAttribute("trade",trade);
        return "trade/details";
    }
    @RequestMapping("/del/{id}")
    private  String del(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        String msg = "删除失败";
        int successNum = tradeService.delete(id);
        if (successNum > 0) {
            msg = "删除成功" + successNum + "条记录";
        }
        redirectAttributes.addFlashAttribute("msg", msg);
        return "redirect:/trade/list";
    }
    @RequestMapping("/edit/{id}")
    private String edit(@PathVariable Integer id,Model model, Trade trade){
        if (id!=null){
            trade=tradeService.get(id);
        }
        model.addAttribute("trade",trade);
        return "trade/edit";
    }
    /*
     *添加
     *@param model
     *@param model
     *@return
     * */
    @RequestMapping("/add")
    private String add(Trade trade, Model model){
        trade=new Trade();
        model.addAttribute("trade",trade);
        return "trade/add";
    }
    @RequestMapping("/save")
    private String save(HttpServletRequest request, Trade trade, RedirectAttributes redirectAttributes){
        String str=request.getParameter("id");
        String msg="save fail!";
       int successNum=0;
        if (str != "" && str != null){
            int id=Integer.parseInt(str);
            trade=tradeService.get(id); //error
            successNum=tradeService.update(trade);
        }
        else{
                successNum=tradeService.insert(trade);
        }
        if(successNum>0){
            msg="save success!";
        }
        redirectAttributes.addFlashAttribute("msg",msg);
        return "redirect:/trade/list";
    }
}

