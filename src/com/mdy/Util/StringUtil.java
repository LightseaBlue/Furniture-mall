package com.mdy.Util;

import java.util.Random;

public class StringUtil {
	public static boolean isNotNull(String x) {
		if (x == null || x.length() <= 0) {
			return false;
		} else {
			return true;
		}
	}
	public static String genOrderId() {
		return System.currentTimeMillis()+""+new Random().nextInt(1000);
	}
}
