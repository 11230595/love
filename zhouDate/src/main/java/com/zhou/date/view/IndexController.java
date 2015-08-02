package com.zhou.date.view;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zhou.date.constants.Constants;
import com.zhou.date.utils.Lunar;

@Controller
public class IndexController {

	public String main(String startTime,String endTime){
		SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date begin = dfs.parse(startTime);
			Date end = dfs.parse(endTime);
			long between = (end.getTime() - begin.getTime()) / 1000;// 除以1000是为了转换成秒
			long day1 = between / (24 * 3600);
			long hour1 = between % (24 * 3600) / 3600;
			long minute1 = between % 3600 / 60;
			long second1 = between % 60 / 60;
			
			return day1 + "天" + hour1 + "小时" + minute1 + "分"
			+ second1 + "秒";
		} catch (ParseException e) {
			e.printStackTrace();
			return "参数有误！";
		}
		
		
	}
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="index",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	/**
	 * 执行
	 * @return
	 */
	@RequestMapping(value="execute",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> execute(@RequestParam String startTime, @RequestParam String endTime) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("date", main(startTime, endTime));
		return map;
	}
	
	/**
	 * 农历阳历互转
	 * @return
	 */
	@RequestMapping(value="convertDate",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> convertDate(@RequestParam String time, @RequestParam int flag) {
		Map<String, Object> map = new HashMap<String, Object>();
		time = time.substring(0,10);
		String date = "";
		if(flag == 0){
			date = Lunar.lunarTosolar(time);
			map.put("date", date);
			map.put("respMsg","农历：" +  time + "对应的阳历是：");
		}else{
			date = Lunar.solarTolunar(time);
			map.put("date", date);
			map.put("respMsg","阳历：" +  time + "对应的农历是：");
		}
		return map;
	}
	
	/**
	 * 计算是不是闰年
	 * @return
	 */
	@RequestMapping(value="isLeapYear",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> isLeapYear(@RequestParam String time) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(time.length()>4){
			time = time.substring(0,4);
		}
		boolean isLeapYear = Lunar.isLeapYear(Integer.parseInt(time));
		if(isLeapYear){
			map.put("respMsg", time + "年<font color='red'>是</font>闰年");
		}else{
			map.put("respMsg", time + "年<font color='red'>不是</font>闰年");
		}
		return map;
	}
}
