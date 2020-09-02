package com.mdy.Test;

import org.junit.jupiter.api.Test;

import com.mdy.Dao.UserDao;
import com.mdy.Po.UserPo;

class UserTest {
	UserDao dao = new UserDao();

	@Test
	void testLogin() {
		String name = "da@qq.com";
		String pwd = "x";
		UserPo po = dao.Login(name, pwd);
		System.out.println(po.getU_add());
	}

	@Test
	void testUpdatePwd() {
		String email = "da@qq.com";
		String newpwd = "a";
		int i = dao.updatePwd(email, newpwd);
		System.out.println(i);
	}

	@Test
	void testReg() {
		UserPo po = new UserPo();
		po.setU_add("adf");
		po.setU_email("as@qq.com");
		po.setU_name("xxx");
		po.setU_pwd("d");
		po.setU_tel("12345678912");
		System.out.println();
		int i = dao.reg(po);
		System.out.println(i);
	}
	
	@Test
	void testFindByemail() throws Exception {
		UserPo po=dao.findByEmail("fox1172893066@qq.com");
		System.out.println(po.getU_name());
		
	}
}
