package com.bsc.modules.mail.service;

import com.bsc.common.persistence.CrudService;
import com.bsc.modules.mail.entity.Mail;
import com.bsc.modules.mail.dao.MailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * mail服务类
 *
 * @Author: yuying
 * @Version: 2018/10/23
 **/
@Service

public class MailService extends CrudService<MailMapper, Mail>{
    @Autowired
    private MailMapper mailMapper;

    @Override
    public Mail get(int id) {
        return super.get(id);
    }

    @Override
    public Mail getT(Mail entity) {
        return super.getT(entity);
    }

    @Override
    public List<Mail> findList(Mail entity) {
        return super.findList(entity);
    }

    @Override
    public int insert(Mail entity) {
        return super.insert(entity);
    }

    @Override
    public int update(Mail entity) {
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
