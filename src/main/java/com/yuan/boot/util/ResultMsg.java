package com.yuan.boot.util;
public class ResultMsg {

	private boolean success;

	private String msg;

	private Object result;

	public ResultMsg() {
	}

	public ResultMsg(boolean success, String msg) {
		this.setSuccess(success);
		this.setMsg(msg);
	}

	public ResultMsg(boolean success, String msg, Object result) {
		this.setSuccess(success);
		this.setMsg(msg);
		this.setResult(result);
	}

	public String getMsg() {
		return msg;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}

}
