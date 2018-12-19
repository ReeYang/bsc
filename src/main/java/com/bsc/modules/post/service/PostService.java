package com.bsc.modules.post.service;
import com.bsc.common.persistence.CrudService;
import com.bsc.modules.post.dao.PostMapper;
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

    @Override
    public Post get(int id) {
        return super.get(id);
    }

    @Override
    public Post getT(Post entity) {
        return super.getT(entity);
    }

    @Override
    public List<Post> findList(Post entity) {
        return super.findList(entity);
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


