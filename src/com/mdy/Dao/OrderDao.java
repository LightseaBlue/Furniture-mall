package com.mdy.Dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mdy.DB.DbHelper;
import com.mdy.Po.ToCarPo;
import com.mdy.Po.TypePo;
import com.mdy.Po.XtypePo;

public class OrderDao {
	DbHelper db = new DbHelper();

	public int deletecar(String uname, String pname, String time) {
		int i = 0;
		String sql = "DELETE from tocar where x_name=? and u_name=?  and t_time=? ";
		i = db.Update(sql, pname, uname, time);
		return i;
	}

	/**
	 * 查看订单
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<ToCarPo> showtocar() throws Exception {
		String sql = "SELECT * from tocar";
		return db.findMutil(sql, null, ToCarPo.class);
	}

	/**
	 * 查看类型
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<TypePo> showtype() throws Exception {
		String sql = "select * from f_type";
		return db.findMutil(sql, null, TypePo.class);

	}

	public int deletextype(String pname, String type) {
		String sql = "DELETE from f_xtype where t_type=? and x_name=?";
		return db.Update(sql, type, pname);
	}

	public int deletetype(String name) throws SQLException {
		List<String> sql = new ArrayList<String>();
		String sql1 = "DELETE from f_type where t_name=? ";
		List<Object> params1 = new ArrayList<Object>();
		params1.add(name);
		String sql2 = "DELETE from f_xtype where t_type=? ";
		List<Object> params2 = new ArrayList<Object>();
		params2.add(name);
		sql.add(sql1);
		sql.add(sql2);
		List<List<Object>> params = new ArrayList<List<Object>>();
		params.add(params1);
		params.add(params2);
		return db.update(sql, params);
	}

	/**
	 * 查看产品
	 * 
	 * @param name
	 * @return
	 * @throws Exception
	 */
	public List<XtypePo> showxtype(String name) throws Exception {
		String sql = "select * from f_xtype where t_type=?";
		List<Object> params = new ArrayList<Object>();
		params.add(name);
		return db.findMutil(sql, params, XtypePo.class);
	}

	/**
	 * 添加类型
	 * 
	 * @param name
	 * @param js
	 * @param img
	 * @return
	 */
	public int addType(String name, String js, String img) {
		int i = 0;
		String sql = "insert into f_type VALUES(null,?,?,?)";
		i = db.Update(sql, name, js, img);
		return i;
	}

	/**
	 * 添加产品
	 * 
	 * @param type
	 * @param name
	 * @param sj
	 * @param cb
	 * @param num
	 * @param js
	 * @param img
	 * @param size
	 * @return
	 */
	public int addXtype(String type, String name, String sj, String cb, String num, String js, String img,
			String size) {
		int i = 0;
		String sql = "insert into f_xtype VALUES(null,?,?,?,?,?,?,?,?)";
		Integer num1 = Integer.valueOf(num);
		Double sj1 = Double.valueOf(sj);
		Double cb1 = Double.valueOf(cb);

		i = db.Update(sql, type, name, sj1, cb1, num1, js, img, size);
		return i;

	}

}
