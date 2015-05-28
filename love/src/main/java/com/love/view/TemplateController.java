package com.love.view;

import java.util.ArrayList;
import java.util.Arrays;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.love.entity.Template;
import com.love.service.TemplateService;


@Controller
public class TemplateController {
	private static Logger logger = Logger.getLogger(TemplateController.class);
	@Resource
	private TemplateService templateService;
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="i/{code}",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index(@PathVariable String code) {
		return new ModelAndView(code + "/index");
	}
	
	/**
	 * 预览
	 * @return
	 */
	@RequestMapping(value="view",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView view(HttpServletRequest request) {
		String tempNum = request.getParameter("tempNum");
		String webCode = request.getParameter("webCode");
		String uName = request.getParameter("uName");
		String mName = request.getParameter("mName");
		String[] content = request.getParameterValues("content");
		String date = request.getParameter("date");
		
		int year = 0;
		int month = 0;
		int day = 0;
		
		List<String> contents = Arrays.asList(content);
		
		if(StringUtils.isNotBlank(date)){
			String[] dates = date.split(",");
			year = Integer.parseInt(dates[0]);
			month = Integer.parseInt(dates[1])-1;
			day = Integer.parseInt(dates[2]);
		}
		
		Template template = new Template();
		template.setuName(uName);
		template.setmName(mName);
		template.setTitle("");
		
		ModelAndView mav = new ModelAndView(tempNum + "/index");
		mav.addObject("year", year);
		mav.addObject("month", month);
		mav.addObject("day", day);
		mav.addObject("contents", contents);
		mav.addObject("template", template);
		
		return mav;
	}
	
	/**
	 * 注册二级域名
	 * @return
	 */
	@RequestMapping(value="template/saveTemp",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> saveUser(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		Template template = new Template();
		template.setId(UUID.randomUUID().toString());
		template.setCreateTime(new Date());
		template.setUserId(request.getParameter("userId"));
		template.setUserCode(request.getParameter("userCode"));
		template.setTitle("本页有dovip.top生成");
		template.setmName(request.getParameter("mName"));
		template.setuName(request.getParameter("uName"));
		template.setWebCode(request.getParameter("webCode")); //用户注册的2级域名
		template.setDate(request.getParameter("data")); //开始时间
		
		try {
			templateService.insert(template);
			map.put("respCode", 0);
		} catch (Exception e) {
			logger.info(e);
			map.put("respCode", 1);
		}
		
		return map;
	}
	
	/**
	 * 判断二级域名是否可用
	 * @return
	 */
	@RequestMapping(value="template/checkWebCode",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> checkWebCode(@RequestParam String webCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		Template template = templateService.findTempByWebCode(webCode);
		if(template == null){
			map.put("respCode", 0);
		}else {
			map.put("respCode", 1);
		}
		return map;
	}
}