package com.mdy.Servers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdy.Util.WebUtil;

import Email.Email;
import Email.EmailPo;

/**
 * 验证码发送
 *
 * @author LightseaBlue
 * @creation 2019年9月16日
 */
@WebServlet("/code.action")
public class CodeServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);
		String email = request.getParameter("email");
		EmailPo mail = new EmailPo();
		int num = (int) (Math.random() * 9000 + 1000);
		mail.setHost("smtp.qq.com"); // 设置邮件服务器,如果不用QQ邮箱的,自己找找看相关的
		mail.setPortNumber("465");
		mail.setSender("513403386@qq.com"); // 发送人
		mail.setName("家具城"); // 发送人昵称
		mail.setReceiver(email); // 接收人
		mail.setUsername("513403386@qq.com"); // 登录账号,一般都是和邮箱名一样
		mail.setPassword("bxjitwtyurjycabc"); // QQ邮箱登录第三方客户端时,密码框请输入“授权码”进行验证。其他的密码具体查看邮件服务器的说明
		mail.setSubject("验证码");
		mail.setMessage("<!DOCTYPE html>\r\n" + "<html>\r\n" + "	<head>\r\n" + "		<meta charset=\"utf-8\">\r\n"
				+ "		<title></title>\r\n" + "	</head>\r\n" + "	\r\n" + "	<body>\r\n"
				+ "		<div style=\"height: 700px; width: 700px; background: #AACCFF;\">\r\n"
				+ "			<p id=\"num\" style=\"color: white; font-size: 150px; padding-top: 65px; padding-left: 180px;\">"
				+ num + "</p>\r\n" + "		</div>\r\n" + "	</body>\r\n" + "</html>");
		if (new Email().send(mail)) {
			toPrintJson(response, num);
		} else {
			toPrintJson(response, 2);
		}
	}

}
