package com.love.view;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.love.entity.User;
import com.love.service.UserService;

/**
 * 操作用户
 * @author zhoudong
 *
 */
@Controller
@RequestMapping("user")
public class UserController {
	private static Logger logger = Logger.getLogger(UserController.class);
	@Resource
	private UserService userService;
	
	/**
	 * 跳转到注册页面
	 * @return
	 */
	@RequestMapping(value="/zc",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView zc() {
		return new ModelAndView("zhuce");
	}
	
	/**
	 * 用户名是否可以使用
	 * @return
	 */
	@RequestMapping(value="/isCode",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> isCode(@RequestParam String userCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = userService.findUserByUserCode(userCode);
		if(user == null){
			map.put("respMsg", true);
		}else {
			map.put("respMsg", false);
		}
		return map;
	}
	/**
	 * 邮箱是否可以使用
	 * @return
	 */
	@RequestMapping(value="/isEmail",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> isEmail(@RequestParam String email) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = userService.findUserByEmail(email);
		if(user == null){
			map.put("respMsg", true);
		}else {
			map.put("respMsg", false);
		}
		return map;
	}
	
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping(value="/saveUser",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> saveUser(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = new User();
		user.setUserId(UUID.randomUUID().toString());
		user.setCreateTime(new Date());
		user.setDelFlag(0);
		user.setEmail(request.getParameter("email"));
		user.setUserCode(request.getParameter("userCode"));
		user.setPassword(request.getParameter("password"));
		
		try {
			userService.insert(user);
			map.put("respCode", 0);
		} catch (Exception e) {
			logger.info(e);
			map.put("respCode", 1);
		}
		
		return map;
	}
}
