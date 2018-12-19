package com.bsc.modules.interaction.service;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.bsc.common.persistence.CrudService;
import com.bsc.modules.interaction.entity.Interact;
import com.bsc.modules.interaction.dao.InteractDao;

/**
 * @author YangRui
 */
@Service
public class InteractService extends CrudService<InteractDao,Interact>{
    @Autowired
    private InteractDao interactDao;
    @Override
    public Interact get(int id) {
        return super.get(id);
    }

    @Override
    public Interact getT(Interact entity) {
        return super.getT(entity);
    }

    @Override
    public List<Interact> findList(Interact entity) {
        return super.findList(entity);
    }

    @Override
    public int insert(Interact entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Interact entity) {
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
