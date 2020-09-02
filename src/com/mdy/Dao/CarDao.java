package com.mdy.Dao;
/**
 * 购物车  商品展示
 *
 * @author LightseaBlue
 * @creation 2019年9月21日
 */

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mdy.DB.DbHelper;
import com.mdy.Po.CarPo;
import com.mdy.Po.XtypePo;

public class CarDao {
	DbHelper db = new DbHelper();

	public int delete(String uname,String pname) {
		int i=0;
		String sql="DELETE from car where u_name=? and x_name=? ";
		i=db.Update(sql, uname,pname);
		return i;
	}
	/**
	 *订单结算
	 * 
	 * @param addr
	 * @return
	 * @throws Exception 
	 */
	public int addAddr(String addr,String uname,String num,String pname) throws Exception {
		int i = 0;
		List<String> sql=new ArrayList<String>();
		List<List<Object>> params=new ArrayList<List<Object>>();
		int xnum=Integer.parseInt(num);
		//修改地址
		String sql1 = "UPDATE `user` set u_add=? WHERE u_name=? ";
		List<Object> params1=new ArrayList<Object>();
		params1.add(addr);
		params1.add(uname);
		sql.add(sql1);
		params.add(params1);
		
		//修改库存
		String sql2="UPDATE f_xtype set x_num=x_num-? where x_name=?";
		List<Object> params2=new ArrayList<Object>();
		params2.add(xnum);
		params2.add(pname);
		sql.add(sql2);
		params.add(params2);
		
		//添加订单表
		String sql3="insert into tocar VALUES(null,?,?,?,?,?)";
		Date time=new Date();
		SimpleDateFormat format=new SimpleDateFormat("YYYY年MM月dd日  HH:mm:ss ");
		String time1=format.format(time);
		List<Object> params3=new ArrayList<Object>();
		params3.add(pname);
		params3.add(uname);
		params3.add(xnum);
		params3.add(addr);
		params3.add(time1);
		sql.add(sql3);
		params.add(params3);

		//删除购物车表
		String find="select c_num from car where u_name=? and x_name=? ";
		List<Object> f=new ArrayList<Object>();
		f.add(uname);
		f.add(pname);
		CarPo po=db.findSingle(find, f, CarPo.class);
		
		String sql4="";
		List<Object> params4=null;
		int wnum=po.getC_num();
//		System.out.println(wnum);
		if(wnum<=xnum) {
			sql4="DELETE from car where u_name=? and x_name=? ";
			params4=new ArrayList<Object>();
			params4.add(uname);
			params4.add(pname);
		}else {
			sql4="UPDATE car set c_num=c_num-? where u_name=? and x_name=? ";
			params4=new ArrayList<Object>();
			params4.add(xnum);
			params4.add(uname);
			params4.add(pname);
		}
		sql.add(sql4);
		params.add(params4);
		
		i = db.update(sql, params);
		return i;
	}

	/**
	 * 购物车显示
	 * 
	 * @param name
	 * @return
	 * @throws Exception
	 */
	public List<CarPo> findcar(String uname, String type) throws Exception {
		List<CarPo> list = null;
		if (type == null) {
			String sql = "select * from car where u_name=? ";
			List<Object> params = new ArrayList<Object>();
			params.add(uname);
			list = db.findMutil(sql, params, CarPo.class);
		} else {
			String sql = "select * from car where u_name=? and t_name=?";
			List<Object> params = new ArrayList<Object>();
			params.add(uname);
			params.add(type);
			list = db.findMutil(sql, params, CarPo.class);
		}
		return list;
	}

	/**
	 * 通过类型查找到产品
	 * 
	 * @param type
	 * @return
	 * @throws Exception
	 */
	public List<XtypePo> findbyname(String type, String name) throws Exception {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from f_xtype where t_type=?  ");
		List<Object> params = new ArrayList<Object>();
		params.add(type);
		if (name != null && name.length() > 0) {
			sb.append(" and x_name like ? ");
			params.add("%" + name + "%");
		}
		return db.findMutil(sb.toString(), params, XtypePo.class);
	}

	/**
	 * 产品详细
	 * 
	 * @param name
	 * @return
	 * @throws Exception
	 */
	public XtypePo findPbyname(String name) throws Exception {
		String sql = "select * from f_xtype where x_name=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(name);
		return db.findSingle(sql, params, XtypePo.class);
	}

	/**
	 * 购物车去重 添加购物车
	 * 
	 * @param uname
	 * @param pname
	 * @param num
	 * @return
	 * @throws Exception
	 */
	public int addcar(String uname, String pname, String type, String num) throws Exception {
		int i = 0;
		int x = Integer.parseInt(num);
		String sql1 = "select * from car where u_name=?  and x_name=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(uname);
		params.add(pname);
		// 去重
		CarPo po = db.findSingle(sql1, params, CarPo.class);
		String sql2 = "";
		if (po == null) {
			sql2 = "insert into car VALUES(null,?,?,?,?)";
			i = db.Update(sql2, uname, pname, x, type);
		} else {
			sql2 = "UPDATE car set c_num=c_num+? where u_name=? and x_name=? ";
			i = db.Update(sql2, x, uname, pname);
		}
		return i;
	}

}
