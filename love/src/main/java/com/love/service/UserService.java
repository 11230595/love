package com.love.service;

import com.love.entity.User;

public interface UserService {
    int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User findUserByUserCode(String userCode);

	User findUserByEmail(String email);
}
