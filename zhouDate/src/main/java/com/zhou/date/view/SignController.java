package com.zhou.date.view;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zhou.date.constants.Constants;
import com.zhou.date.utils.Lunar;

/**
 * 星座相关操作
 * @author zhoudong
 *
 */
@Controller
@RequestMapping("sign")
public class SignController {
	
	/**
	 * 根据日期获取星座
	 * @return
	 */
	@RequestMapping(value="get",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Map<String, Object> findSign(@RequestParam String time,@RequestParam int flag) {
		time = time.substring(0,10);
		if(flag == 0){ //农历生日，需要转成成阳历
			time = Lunar.lunarTosolar(time);
		}
		
		return findSign(time);
	}
	
	/**
	 * 星座详情
	 * @return
	 */
	@RequestMapping(value="detail/{code}",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView signDetail(@PathVariable int code) {
		ModelAndView mav = new ModelAndView("sign/detail");
		mav.addObject("code", String.valueOf(code));
		mav.addObject("name", code2Name(code));
		return mav;
	}
	
	
	private String code2Name(int code){
		String name = "";
		switch (code) {
		case 0:
			name = "白羊座";
			break;
		case 1:
			name = "金牛座";
			break;
		case 2:
			name = "双子座";
			break;
		case 3:
			name = "巨蟹座";
			break;
		case 4:
			name = "狮子座";
			break;
		case 5:
			name = "处女座";
			break;
		case 6:
			name = "天秤座";
			break;
		case 7:
			name = "天蝎座";
			break;
		case 8:
			name = "射手座";
			break;
		case 9:
			name = "魔蝎座";
			break;
		case 10:
			name = "水瓶座";
			break;
		case 11:
			name = "双鱼座";
			break;
		default:
			break;
		}
		
		return name;
	}
	/**
	 * 根据日期 判断星座
	 * @param time
	 * @return
	 */
	private Map<String, Object> findSign(String time){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("date", time);
		time = time.substring(5,time.length());
		int t = Integer.parseInt(time.replace("-", ""));
		
		if(t <= 321 && t >= 419){
			map.put("name", "白羊座");
			map.put("code", 0);
		}else if(t >= 420 && t <= 520){
			map.put("name", "金牛座");
			map.put("code", 1);
		}else if(t >= 521 && t <= 621){
			map.put("name", "双子座");
			map.put("code", 2);
		}else if(t >= 622 && t <= 722){
			map.put("name", "巨蟹座");
			map.put("code", 3);
		}else if(t >= 723 && t <= 822){
			map.put("name", "狮子座");
			map.put("code", 4);
		}else if(t >= 823 && t <= 922){
			map.put("name", "处女座");
			map.put("code", 5);
		}else if(t >= 923 && t <= 1023){
			map.put("name", "天秤座");
			map.put("code", 6);
		}else if(t >= 1024 && t <= 1122){
			map.put("name", "天蝎座");
			map.put("code", 7);
		}else if(t >= 1123 && t <= 1221){
			map.put("name", "射手座");
			map.put("code", 8);
		}else if(t >= 1222 || (t >= 101 && t <= 119)){
			map.put("name", "魔蝎座");
			map.put("code", 9);
		}else if(t >= 120 && t <= 218){
			map.put("name", "水瓶座");
			map.put("code", 10);
		}else if(t >= 219 && t <= 320){
			map.put("name", "双鱼座");
			map.put("code", 11);
		}
		return map;
	}
}
