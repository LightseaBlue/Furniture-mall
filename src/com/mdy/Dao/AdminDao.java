package com.mdy.Dao;

import java.util.ArrayList;
import java.util.List;

import com.mdy.DB.DbHelper;
import com.mdy.Po.AdminPo;

public class AdminDao {
	DbHelper db=new DbHelper();
	
	public AdminPo findAdmin(String name,String pwd) throws Exception {
		String sql="SELECT * from admin where a_name=? and a_pwd=? ";
		List<Object> params=new ArrayList<Object>();
		params.add(name);
		params.add(pwd);
		return db.findSingle(sql, params, AdminPo.class);
	}
	
	public int addAdmin(AdminPo po) {
		int i=0;
		String sql="insert into admin VALUES(null,?,?,?)";
		i=db.Update(sql, po.getA_name(),po.getA_pwd(),po.getA_img());
		return i;
	}
	
	public List<AdminPo> showAdmin() throws Exception{
		String sql="select * from admin";
		return db.findMutil(sql, null, AdminPo.class);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
