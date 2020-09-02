package com.mdy.Servers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdy.Dao.JoinDao;
import com.mdy.Po.JoinPo;
import com.mdy.Util.WebUtil;

import Email.Email;
import Email.EmailPo;

@WebServlet("/join.action")
public class JoinServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	JoinDao dao = new JoinDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);
		String op = request.getParameter("op");
		if (op.equals("addjoin")) {
			addJoin(request, response);
		}else if(op.equals("select")){
			select(request,response);
		}else if(op.equals("delete")) {
			delete(request,response);
		}else if(op.equals("tg")) {
			tg(request,response);
		}
	}

	private void tg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email=request.getParameter("name");
		int i=dao.delete(email);
		if(i>0) {
			EmailPo mail = new EmailPo();
			mail.setHost("smtp.qq.com"); // 设置邮件服务器,如果不用QQ邮箱的,自己找找看相关的
			mail.setPortNumber("465");
			mail.setSender("513403386@qq.com"); // 发送人
			mail.setName("家具城"); // 发送人昵称
			mail.setReceiver(email); // 接收人
			mail.setUsername("513403386@qq.com"); // 登录账号,一般都是和邮箱名一样
			mail.setPassword("bxjitwtyurjycabc"); // QQ邮箱登录第三方客户端时,密码框请输入“授权码”进行验证。其他的密码具体查看邮件服务器的说明
			mail.setSubject("您好：");
			mail.setMessage("<!DOCTYPE html>\r\n" + "<html>\r\n" + "	<head>\r\n" + "		<meta charset=\"utf-8\">\r\n"
					+ "		<title></title>\r\n" + "	</head>\r\n" + "	\r\n" + "	<body>\r\n"
					+ "		<div style=\"height: 700px; width: 700px; background: #AACCFF;\">\r\n"
					+ "			<p id=\"num\" style=\"color: white; font-size: 150px; padding-top: 65px; padding-left: 180px;\">"
					+ "恭喜您在本公司的加盟申请通过，详细请面谈！</p>\r\n" + "		</div>\r\n" + "	</body>\r\n" + "</html>");
			if (new Email().send(mail)) {
				toPrintJson(response, 1);
			} else {
				toPrintJson(response, 2);
			}
		}
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email=request.getParameter("name");
		int i=dao.delete(email);
		if(i>0) {
			EmailPo mail = new EmailPo();
			mail.setHost("smtp.qq.com"); // 设置邮件服务器,如果不用QQ邮箱的,自己找找看相关的
			mail.setPortNumber("465");
			mail.setSender("513403386@qq.com"); // 发送人
			mail.setName("家具城"); // 发送人昵称
			mail.setReceiver(email); // 接收人
			mail.setUsername("513403386@qq.com"); // 登录账号,一般都是和邮箱名一样
			mail.setPassword("bxjitwtyurjycabc"); // QQ邮箱登录第三方客户端时,密码框请输入“授权码”进行验证。其他的密码具体查看邮件服务器的说明
			mail.setSubject("您好：");
			mail.setMessage("<!DOCTYPE html>\r\n" + "<html>\r\n" + "	<head>\r\n" + "		<meta charset=\"utf-8\">\r\n"
					+ "		<title></title>\r\n" + "	</head>\r\n" + "	\r\n" + "	<body>\r\n"
					+ "		<div style=\"height: 700px; width: 700px; background: #AACCFF;\">\r\n"
					+ "			<p id=\"num\" style=\"color: white; font-size: 150px; padding-top: 65px; padding-left: 180px;\">"
					+ "抱歉您在本公司的加盟申请未通过</p>\r\n" + "		</div>\r\n" + "	</body>\r\n" + "</html>");
			if (new Email().send(mail)) {
				toPrintJson(response, 1);
			} else {
				toPrintJson(response, 2);
			}
		}
	}

	private void select(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<JoinPo> list=dao.selectAll();
			toPrintJson(response, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 添加求职报告
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void addJoin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String comp = request.getParameter("company");
		String addr = request.getParameter("address");
		String rs = request.getParameter("companyer");
		String xs = request.getParameter("seller");
		String money = request.getParameter("paiming2");
		String old = request.getParameter("brandold");
		String pp = request.getParameter("brandnew");
		String name = request.getParameter("name");
		String job = request.getParameter("job");
		String phone = request.getParameter("phone");
		int i = dao.addJoin(comp, addr, rs, xs, money, old, pp, name, job, phone);
		toPrintJson(response, i);
	}

}
