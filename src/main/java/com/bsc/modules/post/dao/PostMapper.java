package com.bsc.modules.post.dao;

import com.bsc.common.annotation.MybatisDao;
import com.bsc.common.persistence.CrudDao;
import com.bsc.modules.post.entity.Post;
import java.util.List;

@MybatisDao
public interface  PostMapper extends CrudDao<Post> {

    Post get(int id);

    Post getT(Post entity);

    List<Post> findList(Post entity);

    List<Post> findAllList(Post entity);

    int insert(Post entity);

    int update(Post entity);

    int delete(int id);
}

