package com.movie.vo;

import java.util.List;

public class UserInfoVo {

	private String userName;
	private String password;
	private boolean enable;
	List<String> roles;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	public List<String> getRoles() {
		return roles;
	}
	public void setRoles(List<String> roles) {
		this.roles = roles;
	}
	@Override
	public String toString() {
		return "UserInfo [userName=" + userName + ", password=" + password + ", enable=" + enable + ", roles=" + roles + "]";
	}
	
}
