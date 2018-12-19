package com.bsc.modules.mail.entity;

import com.bsc.common.persistence.BaseEntity;
import com.bsc.modules.user.entity.User;

import java.util.List;

/**
 * 私信实体
 *
 * @Author:yuying
 * @Version: 2018/10/23
 **/

public class Mail extends BaseEntity{
    private User user;
    private String time;
    private String content;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTime() { return time; }
    public void setTime(String time) { this.time = time; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

}
