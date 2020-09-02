package com.mdy.Servers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mdy.Dao.AdminDao;
import com.mdy.Po.AdminPo;
import com.mdy.Util.WebUtil;

@WebServlet("/admin.action")
public class AdminServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	AdminDao dao = new AdminDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);
		String op = request.getParameter("op");
		if (op.equals("login")) {
			login(request, response);
		} else if (op.equals("add")) {
			add(request, response);
		}else if(op.equals("show")) {
			show(request,response);
		}
	}

	/**
	 * 展示管理员
	 * @param request
	 * @param response
	 */
	private void show(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<AdminPo> list=dao.showAdmin();
			toPrintJson(response, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 添加管理员
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String aname = null;
		String pwd = null;
		String img = null;

		try {
			// 创建磁盘文件项工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 获取文件上传处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解析请求对象
			List<FileItem> list = upload.parseRequest(request);
			if (null != list) {
				for (FileItem item : list) {
					if (item.isFormField()) {
						// 普通表单元素
						String name = item.getFieldName();

						System.out.println(name);
						if ("aname".equals(name)) {
							aname = item.getString("UTF-8");
						} else if ("pwd".equals(name)) {
							pwd = item.getString("UTF-8");
						}
					} else {
						// 文件
						System.out.println(this.getServletContext().getRealPath("/"));
						// 图片永久存在服务器中 独立文件项目存放图片
						String path = this.getServletContext().getRealPath("/") + "../resimages/";
						// 文件名称冲突
						String fileName = System.currentTimeMillis() + item.getName();
						File file = new File(path, fileName);
						// 将图片数据写入到file文件
						item.write(file);
						img = "../resimages/" + file.getName();

					}
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 将所有数据封装到po对象
		AdminPo po = new AdminPo();
		po.setA_img(img);
		po.setA_name(aname);
		po.setA_pwd(pwd);
		// 调用dao层方法
		int i = dao.addAdmin(po);
		toPrintJson(response, i);
	}

	/**
	 * 登录
	 * 
	 * @param request
	 * @param response
	 */
	private void login(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		try {
			AdminPo po = dao.findAdmin(name, pwd);
			if (po != null) {
				request.getSession().setAttribute("admin", name);
				toPrintJson(response, 1);
			} else {
				toPrintJson(response, 2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
