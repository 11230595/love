package com.love.view;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.love.entity.User;
import com.love.service.UserService;

@Controller
public class IndexController {

	@Resource
	private UserService userService;
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="index",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	/**
	 * 生成页面
	 * @return
	 */
	@RequestMapping(value="create/{flag}",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView create(@PathVariable int flag) {
		return new ModelAndView("create","flag",flag);
	}
	
}
