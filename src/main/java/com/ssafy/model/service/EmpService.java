package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Dept;
import com.ssafy.model.dto.Emp;

public interface EmpService {
	public int addEmployee(Emp emp);
	public void deleteEmployee(int employeeId);
	public List<Emp> findAllEmployees();
	public List<String> findAllTitles();
	public Emp findEmployeeById(int id);
	public List<Emp> findLikeEmployees(String name);
	public int getEmployeesTotal();
	public void updateEmployee(Emp emp);
	
	
}
