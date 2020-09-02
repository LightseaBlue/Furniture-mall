package com.mdy.Util;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 工具
 *
 * @author LightseaBlue
 * @creation 2019年8月29日
 */
public class WebUtil {
 public static void setCharacterEncoding(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
	 request.setCharacterEncoding("UTF-8");
	 response.setCharacterEncoding("UTF-8");
 }
 
}
