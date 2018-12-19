package com.bsc.modules.interaction.dao;
import java.util.List;
import com.bsc.common.annotation.MybatisDao;
import com.bsc.common.persistence.CrudDao;
import com.bsc.modules.interaction.entity.Interact;
/**
 * @author YangRui
 */
@MybatisDao
public interface InteractDao extends CrudDao<Interact>{
    Interact get(int id);

    Interact getT(Interact entity);

    public List<Interact> findList(Interact entity);

    List<Interact> findAllList(Interact entity);

    int insert(Interact entity);

    int update(Interact entity);

    int delete(int id);
}
