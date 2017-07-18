package com.movie.security.dao;

import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.movie.vo.UserInfoVo;
@Repository
public class UserDaoImpl implements UserDao{
	
	private static final Logger LOGGER = Logger.getLogger(UserDaoImpl.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public UserInfoVo getUserInfo(String username) {
		LOGGER.info("Entering into getUserDetails "+username);
		String sql="select username,password,enable from users where username=?";
		UserInfoVo ui=new UserInfoVo();
		try{
			ui=jdbcTemplate.queryForObject(sql, UserInfoVo.class);
			LOGGER.info(ui);
		}catch(Exception e){
			LOGGER.info("Exception occured: "+e);
		}
		
		return ui;
	}
	
	public UserInfoVo getUserRoles(UserInfoVo user) {
		LOGGER.info("Entering into getUserDetails "+user);
		String sql="select username,password,enable from users where username=?";
		try{
			List<String> user_roles=jdbcTemplate.queryForList(sql, String.class, user.getUserName());
			LOGGER.info(user_roles);
			user.setRoles(user_roles);
		}catch(Exception e){
			LOGGER.info("Exception occured: "+e);
		}
		return user;
	}

}
