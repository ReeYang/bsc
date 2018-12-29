package com.bsc.modules.dict.service;

import com.bsc.common.persistence.CrudService;
import com.bsc.modules.dict.dao.DictMapper;
import com.bsc.modules.dict.entity.Dict;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class DictService extends CrudService< DictMapper, Dict> {

    @Autowired
    private DictMapper DictMapper;

    @Override
    public Dict get(int id) {
        return super.get(id);
    }

    @Override
    public Dict getT(Dict entity) {
        return super.getT(entity);
    }

    @Override
    public List<Dict> findList(Dict entity) {
        return super.findList(entity);
    }

    @Override
    public int insert(Dict entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Dict entity) {
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
