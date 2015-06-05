package com.love.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.love.entity.IndexTemp;
import com.love.mapper.IndexTempMapper;
import com.love.service.IndexTempService;

@Service
public class IndexTempServiceImpl implements IndexTempService{

	@Resource
	private IndexTempMapper indexTempMapper;
	
	public List<IndexTemp> findAll() {
		return indexTempMapper.findAll();
	}

}
