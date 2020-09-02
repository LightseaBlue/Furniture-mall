package com.mdy.Servers;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mdy.Dao.OrderDao;
import com.mdy.Po.ToCarPo;
import com.mdy.Po.TypePo;
import com.mdy.Po.XtypePo;
import com.mdy.Util.WebUtil;

@WebServlet("/order.action")
public class OrserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	OrderDao dao = new OrderDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WebUtil.setCharacterEncoding(request, response);
		String op = request.getParameter("op");
		if (op.equals("type")) {
			type(request, response);
		} else if (op.equals("xtype")) {
			xtype(request, response);
		} else if (op.equals("addtype")) {
			addtype(request, response);
		} else if (op.equals("addxtype")) {
			addxtype(request, response);
		} else if (op.equals("deletet")) {
			deletet(request, response);
		} else if (op.equals("deletex")) {
			deletex(request, response);
		} else if (op.equals("seletetocar")) {
			selecttocar(request, response);
		} else if (op.equals("deletetocar")) {
			deletetocar(request, response);
		}
	}

	/**
	 * 发货
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void deletetocar(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String pname = request.getParameter("pname");
		String uname = request.getParameter("uname");
		String time = request.getParameter("time");
		int i = dao.deletecar(uname, pname, time);
		toPrintJson(response, i);
	}

	/**
	 * 查看订单
	 * 
	 * @param request
	 * @param response
	 */
	private void selecttocar(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<ToCarPo> list = dao.showtocar();
			toPrintJson(response, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 删除产品
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void deletex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		int i = dao.deletextype(name, type);
		toPrintJson(response, i);
	}

	/**
	 * 删除类型
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void deletet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		try {
			int i = dao.deletetype(name);
			toPrintJson(response, i);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	/**
	 * 添加产品
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void addxtype(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String type = null;
		String aname = null;
		String sj = null;
		String cb = null;
		String num = null;
		String js = null;
		String img = null;
		String size = null;

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
						} else if ("sj".equals(name)) {
							sj = item.getString("UTF-8");
						} else if ("cb".equals(name)) {
							cb = item.getString("UTF-8");
						} else if ("num".equals(name)) {
							num = item.getString("UTF-8");
						} else if ("type".equals(name)) {
							type = item.getString("UTF-8");
						} else if ("size".equals(name)) {
							size = item.getString("UTF-8");
						} else if ("js".equals(name)) {
							js = item.getString("UTF-8");
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
		int i = dao.addXtype(type, aname, sj, cb, num, js, img, size);
		toPrintJson(response, i);

	}

	/**
	 * 添加类型
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void addtype(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String aname = null;
		String js = null;
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
						} else if ("js".equals(name)) {
							js = item.getString("UTF-8");
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
		int i = dao.addType(aname, js, img);
		toPrintJson(response, i);

	}

	/**
	 * 展示产品
	 * 
	 * @param request
	 * @param response
	 */
	private void xtype(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		try {
			List<XtypePo> list = dao.showxtype(name);
			toPrintJson(response, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 展示类型
	 * 
	 * @param request
	 * @param response
	 */
	private void type(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<TypePo> list = dao.showtype();
			toPrintJson(response, list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
