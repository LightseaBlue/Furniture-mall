package com.mdy.Dao;

import java.util.ArrayList;
import java.util.List;

import com.mdy.DB.DbHelper;
import com.mdy.Po.UserPo;

public class UserDao {
	DbHelper db = new DbHelper();

	/**
	 * 登陆
	 * 
	 * @param po
	 */
	public UserPo Login(String name, String pwd) {
		String reg = "^[\\d\\w]+@[\\d\\w]+.com$";
		List<Object> params = new ArrayList<Object>();
		params.add(name);
		params.add(pwd);
		UserPo po = null;
		if (!name.matches(reg)) {
			String sql = "select * from user where u_tel=? and u_pwd=? ";
			try {
				po = db.findSingle(sql, params, UserPo.class);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			String sql = "select * from user where u_email=? and u_pwd=? ";
			try {
				po = db.findSingle(sql, params, UserPo.class);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return po;
	}

	/**
	 * 重置密码
	 * 
	 * @param email
	 * @return
	 */
	public int updatePwd(String email, String newPwd) {
		int i = 0;
		String sql = "UPDATE user set u_pwd=? where u_email=? ";
		i = db.Update(sql, newPwd, email);
		return i;
	}

	/**
	 * 注册
	 * 
	 * @param po
	 * @return
	 */
	public int reg(UserPo po) {
		int i = 0;
		if (po != null) {
			String sql = "insert into user values(null,?,?,?,?,?)";
			i = db.Update(sql, po.getU_name(), po.getU_pwd(), po.getU_tel(), po.getU_email(), po.getU_add());
		} else {
			i = 2;
		}
		return i;
	}

	/**
	 * 根据邮箱查看用户
	 * 
	 * @param email
	 * @return
	 * @throws Exception
	 */
	public UserPo findByEmail(String email) throws Exception {
		String sql = "SELECT * from user where u_email=?";
		List<Object> params = new ArrayList<Object>();
		params.add(email);
		return db.findSingle(sql, params, UserPo.class);
	}

}
