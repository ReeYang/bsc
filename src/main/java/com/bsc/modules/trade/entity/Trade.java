package com.bsc.modules.trade.entity;

import com.bsc.common.persistence.BaseEntity;
import com.bsc.modules.post.entity.Post;

import java.util.List;

/**
 * 交易实体
 *
 * @Author: huke
 * @Version: 2018/10/22
 **/
public class Trade extends BaseEntity {

    private Post post;
    private String label;
    private String type;
    private String oprice;
    private String price;
    private String information;
    private String campus;

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOprice() {
        return oprice;
    }

    public void setOprice(String opriceprice) {
        this.oprice = oprice;
    }
    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }
}