package com.love.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.love.entity.Template;
import com.love.mapper.TemplateMapper;
import com.love.service.TemplateService;
@Service
public class TemplateServiceImpl implements TemplateService{
	@Resource
	private TemplateMapper templateMapper;

	public int deleteByPrimaryKey(String id) {
		return templateMapper.deleteByPrimaryKey(id);
	}

	public int insert(Template record) {
		return templateMapper.insert(record);
	}

	public int insertSelective(Template record) {
		return 0;
	}

	public Template selectByPrimaryKey(String id) {
		return null;
	}

	public int updateByPrimaryKeySelective(Template record) {
		return 0;
	}

	public int updateByPrimaryKey(Template record) {
		return 0;
	}
	/**
	 * 判断当前域名是否可用
	 */
	public Template findTempByWebCode(String webCode) {
		return templateMapper.findTempByWebCode(webCode);
	}
	/**
	 * 根据userId查询模板
	 */
	public List<Template> findTempsByUserId(String userId) {
		return templateMapper.findTempsByUserId(userId);
	}

}
