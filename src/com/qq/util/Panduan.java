package com.qq.util;

public class Panduan {
	
	public static boolean check(String price) {
		try {
			Double.parseDouble(price);
		}catch(NumberFormatException e) {
			return false;
		}
		
		return true;
	}

}
