package com.bsc.modules.user.service;

import com.bsc.common.persistence.CrudService;
import com.bsc.modules.user.dao.UserMapper;
import com.bsc.modules.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * user服务类
 *
 * @Author: yuying
 * @Version: 2018/10/23
 **/
@Service
public class UserService extends CrudService<UserMapper, User> {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User get(int id) {
        return super.get(id);
    }

    @Override
    public User getT(User entity) {
        return super.getT(entity);
    }

    @Override
    public List<User> findList(User entity) {
        return super.findList(entity);
    }

    @Override
    public int insert(User entity) {
        return super.insert(entity);
    }

    @Override
    public int update(User entity) {
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