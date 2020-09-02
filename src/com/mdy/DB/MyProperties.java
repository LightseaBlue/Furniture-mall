package com.mdy.DB;

import java.io.IOException;
import java.util.Properties;

@SuppressWarnings("serial")
public class MyProperties extends Properties {

	private static MyProperties instance = null;

	private MyProperties() {
		try {
			this.load(MyProperties.class.getClassLoader().getResourceAsStream("db.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static MyProperties getInstance() {
		instance = new MyProperties();
		return instance;
	}

}
