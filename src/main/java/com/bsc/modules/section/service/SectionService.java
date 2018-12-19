package com.bsc.modules.section.service;
import com.bsc.modules.topic.dao.TopicMapper;
import com.bsc.modules.topic.entity.Topic;
import com.bsc.modules.topic.service.TopicService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

import com.bsc.common.persistence.CrudService;
import com.bsc.modules.section.dao.SectionMapper;
import com.bsc.modules.section.entity.Section;
/**
 * @author yangrui
 * @version 2018年10月23日
 */
@Service
public class SectionService extends CrudService<SectionMapper,Section>{
    @Autowired
  private SectionMapper sectionMapper;
    @Autowired
    private TopicMapper topicMapper;          //用mapper,不涉及到全部数据尽量不用service，在这用service会造成死循环
    @Override
    public Section get(int id) {
      Section section= sectionMapper.get(id);
      Topic topic=new Topic();
      topic.setSection(section);
       section.setTopicList(topicMapper.findList(topic));
      return section;
    }

    @Override
    public Section getT(Section entity) {
        return super.getT(entity);
    }

    @Override
    public List<Section> findList(Section entity) {
     //   List<Section> sectionList=sectionMapper.findList(entity);  //获得符合条件的数据数组
       // for(int i = 0; i < sectionList.size(); i ++){
         //   sectionList.set(i, get(sectionList.get(i).getId()));//得到获得数据的id
        //}
        //return sectionList;
       return super.findList(entity);
    }

    @Override
    public int insert(Section entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Section entity) {
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
