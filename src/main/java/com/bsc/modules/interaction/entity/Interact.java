package com.bsc.modules.interaction.entity;
import com.bsc.common.persistence.BaseEntity;
import com.bsc.modules.post.entity.Post;
import com.bsc.modules.user.entity.User;

/**
 * @author YangRui
 */
public class Interact extends BaseEntity{

    private Post post;
    private Integer postID;   //帖子id
    private User user;
    private Integer userID;//用户id
    private String time;		// 发表时间
    private Integer type;		 //类型
    private String content;	    // 评论内容

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Integer getPostID() {
        return postID;
    }

    public void setPostID(Integer postId) {
        this.postID = postId;
    }
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }


}
