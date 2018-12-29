package com.bsc.modules.trade.entity;

import com.bsc.common.persistence.BaseEntity;
import com.bsc.modules.post.entity.Post;
import org.springframework.web.multipart.MultipartFile;

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
    private String photo;
   /* private MultipartFile file;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
*/
    public void setPost(Post post) {
        this.post = post;
    }

    public Post getPost() {
        return post;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

    public String getCampus() {
        return campus;
    }

    public String getInformation() {
        return information;
    }

    public String getOprice() {
        return oprice;
    }

    public String getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }

    public void setOprice(String oprice) {
        this.oprice = oprice;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}