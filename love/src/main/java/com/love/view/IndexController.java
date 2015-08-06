package com.love.view;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.framework.core.utils.IPUtils;
import com.love.constants.Constants;
import com.love.entity.LoginLog;
import com.love.entity.User;
import com.love.service.LoginLogService;
import com.love.service.UserService;

@Controller
public class IndexController {
	private static Logger logger = Logger.getLogger(IndexController.class);
	@Resource
	private UserService userService;
	@Resource
	private LoginLogService loginLogService;
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="index",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index(HttpServletRequest request) {
		//从cookie取数据
		String userId = "";
		Cookie cookies[] = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("dovip_user")) {
					userId = cookie.getValue();
					User user = userService.findUserByUserId(userId);
					if(user != null){
						request.getSession().setAttribute("user", user);
						String ip = IPUtils.getIP(request);
						loginLogService.insert(new LoginLog(LoginLog.APP_NAME, 10, user.getUserCode(), "", ip, IPUtils.getAddress(ip)));
					}
				}
			}
		} else {
			logger.info("Cookie不存在..");
		}
		
		return new ModelAndView("index","style","navbar navbar-inverse navbar-static-top");
	}
	
	/**
	 * 关于
	 * @return
	 */
	@RequestMapping(value="about",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView about() {
		return new ModelAndView("about","url",Constants.config.getString("BASE_URL"));
	}
	
	/**
	 * 生成页面
	 * @return
	 */
	@RequestMapping(value="create/{flag}",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView create(@PathVariable int flag,HttpServletRequest request) {
		
		if(request.getSession().getAttribute("user") == null){
			return new ModelAndView("redirect:/user/login?returnUrl=" + Constants.config.getString("BASE_URL") + "create/" + flag);
		}
		
		ModelAndView mav = new ModelAndView("create","flag",flag);
		mav.addObject("url", Constants.config.getString("BASE_URL"));
		
		return mav;
	}
	
}
