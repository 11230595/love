package com.love.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.love.entity.User;
import com.love.mapper.UserMapper;
import com.love.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	

	public int deleteByPrimaryKey(String userId) {
		return userMapper.deleteByPrimaryKey(userId);
	}

	public int insert(User record) {
		return userMapper.insert(record);
	}

	public int insertSelective(User record) {
		return userMapper.insertSelective(record);
	}

	public User selectByPrimaryKey(String userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	public int updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(User record) {
		return userMapper.updateByPrimaryKey(record);
	}
	
	/**
	 * 根据userCode查询User
	 */
	public User findUserByUserCode(String userCode) {
		return userMapper.findUserByUserCode(userCode);
	}
	/**
	 * 根据email查询user
	 */
	public User findUserByEmail(String email) {
		return userMapper.findUserByEmail(email);
	}
	/**
	 * 根据用户id查询用户
	 */
	public User findUserByUserId(String userId) {
		return userMapper.selectByPrimaryKey(userId);
	}
	/**
	 * 登陆
	 */
	public User login(String userCode, String password) {
		return userMapper.login(userCode,password);
	}


}
