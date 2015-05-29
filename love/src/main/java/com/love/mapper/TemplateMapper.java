package com.love.mapper;

import java.util.List;

import com.love.entity.Template;

public interface TemplateMapper {
    int deleteByPrimaryKey(String id);

    int insert(Template record);

    int insertSelective(Template record);

    Template selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Template record);

    int updateByPrimaryKey(Template record);
    /**
     * 根据二级域名查询模板
     * @param webCode
     * @return
     */
	Template findTempByWebCode(String webCode);
	/**
	 * 根据userId查询模板
	 * @param userId
	 * @return
	 */
	List<Template> findTempsByUserId(String userId);
}