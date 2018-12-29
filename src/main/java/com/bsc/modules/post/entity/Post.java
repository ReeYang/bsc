package com.bsc.modules.post.entity;
import com.bsc.common.persistence.BaseEntity;
import com.bsc.modules.user.entity.User;

/**
 * 帖子实体
 *
 * @Author: huke
 * @Version: 2018/10/22
 **/
public class Post extends BaseEntity {

  private User user;
    private String title;
    private String classify;
    private String time;
    private String content;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getClassify() {
        return classify;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
