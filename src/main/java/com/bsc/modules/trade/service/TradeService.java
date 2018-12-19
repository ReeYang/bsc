package com.bsc.modules.trade.service;
import com.bsc.common.persistence.CrudService;
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
    private TradeMapper postMapper;

    @Override
    public Trade get(int id) {
        return super.get(id);
    }

    @Override
    public Trade getT(Trade entity) {
        return super.getT(entity);
    }

    @Override
    public List<Trade> findList(Trade entity) {
        return super.findList(entity);
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
