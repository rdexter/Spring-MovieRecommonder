package com.movie.security.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.movie.vo.UserVo;


@Repository
public class EmployeeDaoImpl implements EmployeeDAO,UserDetailsService  {
	 
	    public List<UserVo> getAllEmployees() {
	       // return this.sessionFactory.getCurrentSession().createQuery("from Employee").list();
	   	 return null;
	    }
	 
	    public void deleteEmployee(Integer employeeId) {
	       /* EmployeeEntity employee = (EmployeeEntity) sessionFactory.getCurrentSession().load(
	                EmployeeEntity.class, employeeId);
	        if (null != employee) {
	            this.sessionFactory.getCurrentSession().delete(employee);
	        }*/
	    }
	 
	    public UserDetails loadUserByUsername(String username)
	            throws UsernameNotFoundException, DataAccessException
	    {
	        System.out.println("Getting access details from employee dao !!");
	         
	        // Ideally it should be fetched from database and populated instance of
	        // #org.springframework.security.core.userdetails.User should be returned from this method
	        //UserDetails user = new User(username, "password", true, true, true, true, new GrantedAuthority[]{ new GrantedAuthorityImpl("ROLE_USER") });
	        
	        List<GrantedAuthority>list=new ArrayList<GrantedAuthority>();
	        list.add( new GrantedAuthorityImpl("ROLE_USER"));
	        UserDetails user1 = new User(username, username, false, false, false, false, list);
	        return user1;
	    }


		@Override
		public void addEmployee(UserVo employee) {
			// TODO Auto-generated method stub
			
		}
}
