package com.movie.security.dao;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.movie.vo.UserVo;


public interface EmployeeDAO 
{
    public void addEmployee(UserVo employee);
    public List<UserVo> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
    public UserDetails loadUserByUsername(String username);
}