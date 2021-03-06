package com.taobaoke.mapper;

import java.util.List;

import com.taobaoke.model.FrameUrl;

public interface FrameUrlMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FrameUrl record);

    int insertSelective(FrameUrl record);

    FrameUrl selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FrameUrl record);

    int updateByPrimaryKey(FrameUrl record);
    
    List<FrameUrl> selectAllUrl(int type);
}