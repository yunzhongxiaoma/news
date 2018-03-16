package com.yunzhongxiaoma.utils;


public class AppexceptionTest {
	public static void execute (String a) throws AppException{
		if ("false".equals(a)) {
			System.out.println();
			throw new AppException("com.ruanko.utils.AppExceptionTest.execute:parameter cannot be false");
		}
	}
	
	public static void main(String[] args) {
		try {
			execute("false");
		} catch (AppException e) {
			e.printStackTrace();
		}
	}
}
