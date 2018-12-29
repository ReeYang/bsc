package com.bsc.modules.user.service;
import java.util.List;

import com.bsc.modules.login.dao.LoginMapper;
import com.bsc.modules.user.dao.UserMapper;
import com.bsc.modules.user.entity.User;
import com.bsc.common.persistence.CrudService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class UserService extends CrudService<UserMapper,User> {
    @Autowired
    private UserMapper userMapper;

    @Override // 重写方法,根据用户id来获取整个用户实体
    public User get(int id) {
        User user = userMapper.get(id);
//        user.setUser_(userMapper.get(user.getUser_().getId()));
        return user;
    }


    @Override
    public User getT(User entity) {
        return super.getT(entity);
    }

    @Override
    public List<User> findList(User entity) {
        List<User> userList = userMapper.findList(entity);
        for(int i = 0; i < userList.size(); i ++){
            userList.set(i, get(userList.get(i).getId()));
        }
        return userList;
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
    public int delete(int id) { return super.delete(id); }

    @Override
    public int deleteAll(int[] ids) {
        return super.deleteAll(ids);
    }

    public User login(String str) {     //调用UserMapper里的方法,根据传递过来的账号判断该用户是否存在
        User existUser = userMapper.getByNum(str);
        return existUser;
    }
}
