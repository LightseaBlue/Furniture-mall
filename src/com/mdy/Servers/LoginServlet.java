package com.mdy.Servers;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdy.Dao.UserDao;
import com.mdy.Po.UserPo;
import com.mdy.Util.WebUtil;

@WebServlet("/user.action")
public class LoginServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	UserDao dao = new UserDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);
		String op = request.getParameter("op");
		if (op.equals("login")) {
			login(request, response);
		} else if (op.equals("reg")) {
			reg(request, response);
		} else if (op.equals("findpwd")) {
			findPwd(request, response);
		} else if (op.equals("elogin")) {
			try {
				elogin(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 邮箱验证登陆
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private void elogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
		UserPo po = dao.findByEmail(email);
		if (po != null) {
			toPrintJson(response, 1);
			request.getSession().setAttribute("user", po.getU_name());
			ServletContext context=this.getServletContext();
			Integer num=(Integer)context.getAttribute("num");
			System.out.println(num);
			if(num==null) {
				num=1;
			}else {
				num++;
			}
			context.setAttribute("num", num);
		} else {
			toPrintJson(response, 2);
		}
	}

	/**
	 * 重置密码
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void findPwd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		if (pwd == null || pwd.length() <= 0) {
			try {
				UserPo po = dao.findByEmail(email);
				if (po != null) {
					toPrintJson(response, 1);
				} else {
					toPrintJson(response, 2);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			int i = dao.updatePwd(email, pwd);
			if (i > 0) {
				toPrintJson(response, 1);
			} else {
				toPrintJson(response, 2);
			}
		}
	}

	/**
	 * 注册
	 * 
	 * @param request
	 * @param response
	 */
	private void reg(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		UserPo po = new UserPo();
		po.setU_name(name);
		po.setU_pwd(pwd);
		po.setU_tel(tel);
		po.setU_email(email);
		int i = dao.reg(po);
		try {
			toPrintJson(response, i);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 账号登陆
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		UserPo po = dao.Login(name, pwd);
		if (po != null) {
			request.getSession().setAttribute("user", po.getU_name());
			
			ServletContext context=this.getServletContext();
			Integer num=(Integer)context.getAttribute("num");
			System.out.println(num);
			if(num==null) {
				num=1;
			}else {
				num++;
			}
			context.setAttribute("num", num);
			
			toPrintJson(response, 1);
		} else {
			toPrintJson(response, 2);
		}
	}

}
