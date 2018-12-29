package com.bsc.modules.trade.service;
import com.bsc.common.persistence.CrudService;
import com.bsc.modules.post.service.PostService;
import com.bsc.modules.trade.dao.TradeMapper;
import com.bsc.modules.trade.entity.Trade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Student服务类
 *
 * @Author: huke
 * @Version: 2018/10/22
 **/
@Service
public class TradeService extends CrudService<TradeMapper, Trade> {

    @Autowired
    private TradeMapper tradeMapper;
    @Autowired
    private PostService postService;

    @Override
    public Trade get(int id) {
        Trade trade=tradeMapper.get(id);
        trade.setPost(postService.get(trade.getPost().getId()));//service重写后的get
        return trade;
    }

    @Override
    public Trade getT(Trade entity) {
        return super.getT(entity);
    }

    @Override
    public List<Trade> findList(Trade entity) {
        List<Trade> tradeList = tradeMapper.findList(entity);
        for(int i = 0; i < tradeList.size(); i ++){
            tradeList.set(i, get(tradeList.get(i).getId()));
        }
        return tradeList;
    }

    @Override
    public int insert(Trade entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Trade entity) {
        return super.update(entity);
    }

    @Override
    public int delete(int id) {
        return super.delete(id);
    }
    @Override
    public int deleteAll(int[] ids) {
        return super.deleteAll(ids);
    }
}
