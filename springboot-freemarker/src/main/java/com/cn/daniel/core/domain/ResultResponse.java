package com.cn.daniel.core.domain;

public class ResultResponse {
	private String status;
    public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private boolean message;  
    private Integer id;  
      
    public boolean getMessage() {  
        return message;  
    }  
    public void setMessage(boolean message) {  
        this.message = message;  
    }  
      
    public Integer getId() {  
        return id;  
    }  
    public void setId(Integer id) {  
        this.id = id;  
    }  
  
}  