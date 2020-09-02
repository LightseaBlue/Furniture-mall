package com.mdy.Servers;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mdy.Util.WebUtil;

public class BaseServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * 转换成Json
	 * 
	 * @param response
	 * @param obj
	 * @param total
	 * @throws IOException
	 */
	public void toPrintJson(HttpServletResponse response, Object obj) throws IOException {
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		out.print(gson.toJson(obj));

	}

	/**
	 * easyui中菜品管理
	 * 
	 * @param response
	 * @param obj
	 * @param total
	 * @throws IOException
	 * 
	 */
	public void toPrintJson(HttpServletResponse response, Object obj, Integer total) throws IOException {
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("\"total\":" + total);
		sb.append("\"rows\":" + gson.toJson(obj));
		sb.append("}");
		out.print(sb.toString());

	}

	/**
	 * 对象的赋值的封装
	 * 
	 * @param <T>
	 * @param request
	 * @param cls
	 * @return
	 * @throws NumberFormatException
	 * @throws IllegalArgumentException
	 * @throws InvocationTargetException
	 */
	public <T> T parseRequest(HttpServletRequest request, Class<T> cls)
			throws NumberFormatException, IllegalArgumentException, InvocationTargetException {
		T t = null;
		// 获取cls的字段
		Field[] filed = cls.getDeclaredFields();
		// 获取cls的方法名
		Method[] method = cls.getDeclaredMethods();
		// 根据反射创建实例对象
		try {
			t = cls.newInstance();
			// 循环该对象的字段
			for (Field f : filed) {
				String fname = f.getName();
				// 根据当前这个名称从请求对象中获取值
				String value = request.getParameter(fname);
				if (value == null || "".equals(value)) {
					continue;
				}
				// 循环方法，找到与之匹配的set方法 ，进行激活赋值
				for (Method m : method) {
					if (("set" + fname).equalsIgnoreCase(m.getName())) {
						// 获取set方法形参数据类型 set仅有一个形参
						String typename = m.getParameterTypes()[0].getName();
						if ("java.lang.Integer".equals(typename)) {
							m.invoke(t, Integer.parseInt(value)); // 激活此方法 传入的参数必须和底层方法的数据类型一致
						} else if ("java.lang.Double".equals(typename)) {
							m.invoke(t, Double.parseDouble(value)); // 激活此方法 传入的参数必须和底层方法的数据类型一致
						} else if ("java.lang.Float".equals(typename)) {
							m.invoke(t, Float.parseFloat(value)); // 激活此方法 传入的参数必须和底层方法的数据类型一致
						} else if ("java.lang.Long".equals(typename)) {
							m.invoke(t, Long.parseLong(value)); // 激活此方法 传入的参数必须和底层方法的数据类型一致
						} else {
							m.invoke(t, value); // 激活此方法 传入的参数必须和底层方法的数据类型一致
						}
					}
				}

			}
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}

		return t;
	}
}
