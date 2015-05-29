package com.love.service;

import java.util.List;

import com.love.entity.Template;

public interface TemplateService {
	int deleteByPrimaryKey(String id);

    int insert(Template record);

    int insertSelective(Template record);

    Template selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Template record);

    int updateByPrimaryKey(Template record);

	Template findTempByWebCode(String webCode);

	List<Template> findTempsByUserId(String userId);
}
