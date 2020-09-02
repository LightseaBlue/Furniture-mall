package com.mdy.Servers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdy.Dao.CarDao;
import com.mdy.Po.XtypePo;
import com.mdy.Util.WebUtil;

@WebServlet("/car.action")
public class CarServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	CarDao dao = new CarDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);
		String op = request.getParameter("op");
		if (op.equals("ssh")) {
			ssh(request, response);
		}else if(op.equals("addcar")) {
			addcar(request,response);
		}else if(op.equals("finish")) {
			finish(request,response);
		}else if(op.equals("deletep")) {
			deletep(request,response);
		}
	}

	/**
	 * 删除产品
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	private void deletep(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String uname=request.getParameter("uname1");
		String pname=request.getParameter("pname1");
		int i=dao.delete(uname, pname);
		toPrintJson(response, i);
	}

	/**
	   *      购物车结算
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	private void finish(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int j=0;
		String uname=request.getParameter("uname");
		String pname=request.getParameter("pname");
		String num=request.getParameter("num");
		String addr=request.getParameter("addr");
		String pname1=pname.substring(1, pname.length()-1);
//		System.out.println(pname1);
		String[] pname2=pname1.split(",");
		String num1=num.substring(1,num.length()-1);
//		System.out.println(num1);
		String[] num2=num1.split(",");
		for(int i=0;i<pname2.length;i++) {
			String pname3=pname2[i].substring(1, pname2[i].length()-1);
			String num3=num2[i].substring(1,num2[i].length()-1);
//			System.out.println(pname3+"           "+num3);
			try {
				j=dao.addAddr(addr, uname, num3, pname3);
				System.out.println(j);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		toPrintJson(response, j);
		
	}

	/**
	 * 加入购物车
	 * @param request
	 * @param response
	 */
	private void addcar(HttpServletRequest request, HttpServletResponse response) {
		String uname=request.getParameter("uname");
		String pname=request.getParameter("pname");
		String num=request.getParameter("num");
		String type=request.getParameter("type");
		try {
			int i=dao.addcar(uname, pname, type, num);
			toPrintJson(response, i);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * 搜索框实现
	 * 
	 * @param request
	 * @param response
	 */
	private void ssh(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		try {
			List<XtypePo> list = dao.findbyname(type, name);
			toPrintJson(response, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}