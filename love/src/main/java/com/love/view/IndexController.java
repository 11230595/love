package com.love.view;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value="/index",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody String index(@PathVariable String userCode, @PathVariable String userName) {
		User user = new User();
		System.out.println(userCode);
		System.out.println(userName);
		return "success";
	}
	
}
