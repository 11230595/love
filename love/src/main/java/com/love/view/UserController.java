package com.love.view;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.love.constants.Constants;
import com.love.entity.Template;
import com.love.entity.User;
import com.love.service.TemplateService;
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
	@Resource
	private TemplateService templateService;
	
	/**
	 * 跳转到注册页面
	 * @return
	 */
	@RequestMapping(value="/zc",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView zc() {
		return new ModelAndView("zhuce");
	}
	/**
	 * 跳转到登陆页面
	 * @return
	 */
	@RequestMapping(value="/login",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(HttpServletRequest request) {
		return new ModelAndView("login","returnUrl",request.getParameter("returnUrl"));
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
			map.put("baseUrl", Constants.config.getString("BASE_URL"));
		} catch (Exception e) {
			logger.info(e);
			map.put("respCode", 1);
		}
		
		return map;
	}
	
	/**
	 * 登陆
	 * @return
	 */
	@RequestMapping(value="/signin",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> signin(HttpServletRequest request,
			@RequestParam String userCode, @RequestParam String password,@RequestParam(required=false) String returnUrl) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = userService.login(userCode,password);
		
		if(user != null){
			map.put("respCode", 0); //登陆成功
			
			if(StringUtils.isNotBlank(returnUrl))
				map.put("returnUrl", returnUrl);
			else
				map.put("returnUrl", Constants.config.getString("BASE_URL"));
			
			request.getSession().setAttribute("user", user);
		}else {
			map.put("respCode", 1);	//登陆失败
		}
		
		return map;
	}
	
	/**
	 * 用户中心
	 * @return
	 */
	@RequestMapping(value="/home/{userId}",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView userHome(@PathVariable String userId) {
		ModelAndView mav = new ModelAndView("userHome"); 
		List<Template> list = templateService.findTempsByUserId(userId);
		mav.addObject("temps", list);
		mav.addObject("url", Constants.config.getString("BASE_URL"));
		return mav; 
	}
	
	/**
	 * 更新用户资料
	 * @return
	 */
	@RequestMapping(value="/update",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> userHome(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = new User();
		user.setUserId(request.getParameter("userId"));
		user.setPassword(request.getParameter("password"));
		
		try {
			userService.updateByPrimaryKeySelective(user);
			map.put("respCode", 0);
		} catch (Exception e) {
			logger.info(e);
			map.put("respCode", 1);
		}
		
		return map; 
	}
	
	/**
	 * 退出登陆
	 * @return
	 */
	@RequestMapping(value="/loginOut",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> loginOut(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		request.getSession().invalidate();
		map.put("respCode", 0);
		map.put("baseUrl", Constants.config.getString("BASE_URL"));
		
		return map; 
	}
}
