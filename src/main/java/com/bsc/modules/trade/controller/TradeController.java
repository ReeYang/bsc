package com.bsc.modules.trade.controller;
import com.bsc.modules.trade.entity.Trade;
import com.bsc.modules.trade.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}

