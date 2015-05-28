package com.love.entity;

import java.util.Date;

public class Template {
    private String id;

    private String userId;

    private String userCode;

    private String webCode;

    private String title;

    private Integer tempNum;

    private String uName;

    private String mName;

    private String content;

    private String date;

    private String sys;

    private Date createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode == null ? null : userCode.trim();
    }

    public String getWebCode() {
        return webCode;
    }

    public void setWebCode(String webCode) {
        this.webCode = webCode == null ? null : webCode.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getTempNum() {
        return tempNum;
    }

    public void setTempNum(Integer tempNum) {
        this.tempNum = tempNum;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName == null ? null : mName.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public String getSys() {
        return sys;
    }

    public void setSys(String sys) {
        this.sys = sys == null ? null : sys.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}