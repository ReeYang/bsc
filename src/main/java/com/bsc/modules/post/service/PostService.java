package com.bsc.modules.post.service;
import com.bsc.common.persistence.CrudService;
import com.bsc.modules.post.dao.PostMapper;
import com.bsc.modules.user.dao.UserMapper;
import com.bsc.modules.post.entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * Student服务类
 *
 * @Author: huke
 * @Version: 2018/10/22
 **/
@Service
public class PostService extends CrudService<PostMapper, Post> {

    @Autowired
    private PostMapper postMapper;
    @Autowired
    private UserMapper userMapper;

    @Override // 重写方法获得除id之外的其他user属性
    public Post get(int id) {
        Post post = postMapper.get(id);//根据id
        post.setUser(userMapper.get(post.getUser().getId()));//setUser(User user) {this.user = user; }
        /*post 调用getuser返回user实体
        调用baseentity里的getid获得user.id做参数
        用get获取相应id的user单条数据做参数
        被post调用setuser作为此条post对应的user*/
        return post;
        //return super.get(id);
    }

    @Override
    public Post getT(Post entity) {
        return super.getT(entity);
    }

    @Override
    public List<Post> findList(Post entity) {
        List<Post> postList = postMapper.findList(entity);//获得符合条件的数据，数组
        for(int i = 0; i < postList.size(); i ++){
            postList.set(i, get(postList.get(i).getId()));//得到获得数据的id，调用get返回posts et
        }
        return postList;
        /* return super.findList(entity);*/
    }

    @Override
    public int insert(Post entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Post entity) {
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


