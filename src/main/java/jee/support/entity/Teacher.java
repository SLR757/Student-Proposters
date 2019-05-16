package jee.support.entity;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.List;

//使用lomok插件，可以不写setter和getter方法
@Data
@Accessors(chain = true)
@Builder
public class Teacher {

    private long teacherId;//学号
    private String name;//名字
    private String address;//地址
    private Date dateCreated;//日期
    private String cellphone;//电话
    private String sex;//性别
    int status;//状态
    Admin admin;                //用户对象
    List<Attachment> attachments; //附件列表

    public long getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(long teacherId) {
        this.teacherId = teacherId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }



    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public List<Attachment> getAttachments() {
        return attachments;
    }

    public void setAttachments(List<Attachment> attachments) {
        this.attachments = attachments;
    }

    public Teacher(){

    }

    public Teacher(long teacherId, String name, String address, Date dateCreated, String cellphone, String sex, int status, Admin admin, List<Attachment> attachments) {
        this.teacherId = teacherId;
        this.name = name;
        this.address = address;
        this.dateCreated = dateCreated;
        this.cellphone = cellphone;
        this.sex = sex;
        this.status = status;
        this.admin = admin;
        this.attachments = attachments;
    }

}
