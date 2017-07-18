package com.movie.security.dao;

import com.movie.vo.UserInfoVo;

public interface UserDao {
	
	UserInfoVo getUserInfo(String username);
	
	UserInfoVo getUserRoles(UserInfoVo user);

}
