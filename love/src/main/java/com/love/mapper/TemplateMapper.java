package com.love.mapper;

import com.love.entity.Template;

public interface TemplateMapper {
    int deleteByPrimaryKey(String id);

    int insert(Template record);

    int insertSelective(Template record);

    Template selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Template record);

    int updateByPrimaryKey(Template record);

	Template findTempByWebCode(String webCode);
}