package com.bsc.modules.topic.dao;
import java.util.List;

import com.bsc.common.annotation.MybatisDao;
import com.bsc.common.persistence.CrudDao;
import com.bsc.modules.topic.entity.Topic;
/**
 * @author yangrui
 * @version 2018年10月23日
 */
@MybatisDao
public interface TopicMapper extends CrudDao<Topic>{
    Topic get(int id);

    Topic getT(Topic entity);

     List<Topic> findList(Topic entity);

    List<Topic> findAllList(Topic entity);

    int insert(Topic entity);

    int update(Topic entity);

    int delete(int id);

}
