package com.love.mapper;

import java.util.List;

import com.love.entity.IndexTemp;

public interface IndexTempMapper {
    int deleteByPrimaryKey(String id);

    int insert(IndexTemp record);

    int insertSelective(IndexTemp record);

    IndexTemp selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(IndexTemp record);

    int updateByPrimaryKey(IndexTemp record);

	List<IndexTemp> findAll();
}