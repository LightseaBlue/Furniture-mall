package com.mdy.Listen;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppctionsListen implements ServletContextListener {
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// 销毁 将数据储存到文件中
		Integer count = (Integer) sce.getServletContext().getAttribute("num");
		System.out.println(count);
		if (null == count) {
			count = 0;
		}
		// 保存文件 服务器的webapps下
		System.out.println(sce.getServletContext().getRealPath("/"));
		String path = sce.getServletContext().getRealPath("");
		File file = new File(path);
		file = new File(file.getParent(), "count.txt");
		try {
			DataOutputStream out = new DataOutputStream(new FileOutputStream(file));
			out.writeInt(count);
			out.flush();
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		String path = sce.getServletContext().getRealPath("/");
		File file = new File(path);
		file = new File(file.getParent(), "count.txt");
		int num = 0;
		if (file.length() != 0) {
			try {
				DataInputStream in = new DataInputStream(new FileInputStream(file));
				num = in.readInt();
				System.out.println(num);
				in.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		sce.getServletContext().setAttribute("num", num);
	}
}
