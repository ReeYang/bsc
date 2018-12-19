package com.bsc.modules.topic.service;
import com.bsc.modules.section.dao.SectionMapper;
import com.bsc.modules.section.service.SectionService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

import com.bsc.common.persistence.CrudService;
import com.bsc.modules.topic.dao.TopicMapper;
import com.bsc.modules.topic.entity.Topic;
/**
 * @author YangRui
 */
@Service
public class TopicService extends CrudService<TopicMapper,Topic>{
    @Autowired
    private TopicMapper topicMapper;
    @Autowired
    private SectionService sectionService;
    @Override
    public Topic get(int id) {
        Topic topic = topicMapper.get(id);//根据id
        topic.setSection(sectionService.get(topic.getSection().getId()));
        return topic;
      /*return super.get(id);*/
    }

    @Override
    public Topic getT(Topic entity) {
        return super.getT(entity);
    }

    @Override
    public List<Topic> findList(Topic entity) {
        List<Topic> topicList = topicMapper.findList(entity);//获得符合条件的数据
        for(int i = 0; i < topicList.size(); i ++){
            topicList.set(i, get(topicList.get(i).getId()));//得到获得数据的id，
        }
        return topicList;
        /*return super.findList(entity);*/
    }

    @Override
    public int insert(Topic entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Topic entity) {
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
