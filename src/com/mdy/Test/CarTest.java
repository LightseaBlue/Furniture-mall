package com.mdy.Test;

import java.util.List;

import org.junit.jupiter.api.Test;

import com.mdy.Dao.CarDao;
import com.mdy.Po.XtypePo;

class CarTest {
	CarDao dao=new CarDao();

	@Test
	void testFindbyname() throws Exception {
		List<XtypePo> list=dao.findbyname("接待沙发",null);
		System.out.println(list.size());
	}

	@Test
	void testaddcar() throws Exception {
		int i=dao.addcar("adf", "adf","55", null);
		System.out.println(i);
	}
	
	@Test
	void testFinish() throws Exception {
		int i=dao.addAddr("asdf", "asdfddd", "2", "柔软沙发");
		System.out.println(i);
	}
	
	@Test
	void testDelete() {
		int i=dao.delete("asdfddd","蓝皮座椅");
		System.out.println(i);
	}
}
