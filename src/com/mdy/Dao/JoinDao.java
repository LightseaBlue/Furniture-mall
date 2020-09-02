package com.mdy.Dao;

import java.util.List;

import com.mdy.DB.DbHelper;
import com.mdy.Po.JoinPo;

public class JoinDao {
	// INSERT into `join`
	// VALUES(null,'公司名','地址',3,4,10.2,'老品牌','新品牌','姓名','职位','电话')
	DbHelper db = new DbHelper();

	/**
	 * 删除
	 * @param name
	 * @return
	 */
	public int delete(String name) {
		String sql="DELETE  from `join` where j_phone=? ";
		return db.Update(sql, name);
	}
	/**
	 * 查看
	 * @return
	 * @throws Exception
	 */
	public List<JoinPo> selectAll() throws Exception{
		String sql="SELECT * from `join`";
		return db.findMutil(sql, null, JoinPo.class);
	}
	/**
	 * 添加求职
	 * 
	 * @param comp
	 * @param addr
	 * @param rs
	 * @param xs
	 * @param money
	 * @param old
	 * @param pp
	 * @param name
	 * @param joc
	 * @param phone
	 * @return
	 */
	public int addJoin(String comp, String addr, String rs, String xs, String money, String old, String pp, String name,
			String job, String phone) {
		int i = 0;
		int nrs = Integer.parseInt(rs);
		int nxs = Integer.parseInt(xs);
		Double nmoney = Double.parseDouble(money);
		String sql = "INSERT into `join` VALUES(null,?,?,?,?,?,?,?,?,?,?)";
//		List<Object> params=new ArrayList<Object>();
//		params.add(comp);
//		params.add(addr);
//		params.add(nrs);
//		params.add(nxs);
//		params.add(nmoney);
//		params.add(old);
//		params.add(pp);
//		params.add(name);
//		params.add(job);
//		params.add(phone);
		i = db.Update(sql, comp, addr, nrs, nxs, nmoney, old, pp, name, job, phone);
		return i;
	}

}
