package com.bsc.modules.section.entity;
import com.bsc.common.persistence.BaseEntity;
import com.bsc.modules.topic.entity.Topic;

import java.util.List;

/**
 * @author yangrui
 * @version 2018年9月1日
 */

public class Section extends BaseEntity{

   private String title;		 // 模块
  private   Integer num;	    // 话题数量
  private List<Topic> topicList;
    public String getTitle() { return title; }

    public void setTitle(String title) { this.title = title; }

    public Integer getNum() { return num; }

    public void setNum(Integer num) { this.num = num; }

  public List<Topic> getTopicList() {
    return topicList;
  }

  public void setTopicList(List<Topic> topicList) {
    this.topicList = topicList;
  }
}
