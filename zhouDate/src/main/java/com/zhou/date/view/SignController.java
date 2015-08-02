package com.zhou.date.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zhou.date.constants.Constants;

/**
 * 星座相关操作
 * @author zhoudong
 *
 */
@Controller
@RequestMapping("sign")
public class SignController {
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="index",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("sellerUrl", Constants.config.getString("SELLER_URL"));
		return mav;
	}
}
