package com.pae.maja.helper;

import java.io.Serializable;

public class AjaxCheck implements Serializable {
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	//{"message":getMessage()}
}
