package com.bsc.modules.section.dao;
import java.util.List;
import com.bsc.common.annotation.MybatisDao;
import com.bsc.common.persistence.CrudDao;
import com.bsc.modules.section.entity.Section;

/**
 * @author yangrui
 * @version 2018年9月1日
 */
@MybatisDao
public interface SectionMapper extends CrudDao<Section>{
    Section get(int id);

    Section getT(Section entity);

    List<Section> findList(Section entity);

    List<Section> findAllList(Section entity);

    int insert(Section entity);

    int update(Section entity);

    int delete(int id);

}
