package com.love.view;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.love.constants.Constants;

/**
 * 使用信纸
 * @author zhoudong
 *
 */
@Controller
@RequestMapping("xinzhi")
public class PaperController {
	/**
	 * 生成
	 * @return
	 */
	@RequestMapping(value="create/{index}",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index(@PathVariable Integer index,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/xinzhi/createXinzhi");
		mav.addObject("index",index);
		mav.addObject("margin", margin(request));
		mav.addObject("url",Constants.config.getString("BASE_URL"));
		return mav;
	}
	
	/**
	 * 图片列表
	 * @return
	 */
	@RequestMapping(value="list",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/xinzhi/xinzhiList");
		String xinZhiUrl = Constants.config.getString("XINZHI_URL");
		String[] xinZhiUrls = xinZhiUrl.split(",");
		
		mav.addObject("xinZhiUrls",Arrays.asList(xinZhiUrls));
		mav.addObject("margin", margin(request));
		return mav;
	}
	/**
	 * 计算margin-left
	 * @param request
	 * @return
	 */
	private int margin(HttpServletRequest request){
		String userAgent = request.getHeader("user-agent");  //请求从哪来的
		int margin = 15;
		if(userAgent.contains("Android") || userAgent.contains("iPhone")){
			margin = 0;
		}
		return margin;
	}
}
