package com.love.utils;

import java.util.Arrays;

public class CoreUtils {
	/**
	 * 解析string数组
	 * @param param
	 * @return
	 */
	public static String parseString(String[] param){
		String str = Arrays.toString(param);
		return str.substring(1,str.length()-1);
	}
}
