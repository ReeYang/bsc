package com.bsc.modules.trade.dao;

import com.bsc.common.annotation.MybatisDao;
import com.bsc.common.persistence.CrudDao;
import com.bsc.modules.trade.entity.Trade;

import java.util.List;

@MybatisDao
public interface  TradeMapper extends CrudDao<Trade> {

    Trade get(int id);

    Trade getT(Trade entity);

    List<Trade> findList(Trade entity);

    List<Trade> findAllList(Trade entity);

    int insert(Trade entity);

    int update(Trade entity);

    int delete(int id);
}
