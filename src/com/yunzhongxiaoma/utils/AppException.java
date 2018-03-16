package com.yunzhongxiaoma.utils;

public class AppException extends Exception{
	//私有属性
	private int exceptionCode;	//异常信息
	private String message;		//异常编号
	
	//构造方法
	public AppException(String message) {
		this.message = message;
	}
	public AppException(String message,int exceptionCode) {
		this.message = message;
		this.exceptionCode = exceptionCode;
	}

	//成员方法
	/**
	 * 获取异常编号
	 * @return
	 */
	public int getExceptionCode() {
		return exceptionCode;
	}
	/**
	 * 获取详细的异常信息
	 * @return
	 */
	public String getMessage() {
		String detailMessage = "detailMessage"
				+ exceptionCode + " " + message;
		return message;
	}
	
}
