package com.ssafy.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.model.dao.EmpDao;
import com.ssafy.model.dto.Dept;
import com.ssafy.model.dto.Emp;
import com.ssafy.model.dto.HrmException;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpDao dao;
	@Override
	public int addEmployee(Emp emp) {
		try {
			return dao.addEmployee(emp);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return emp.getId();
	}

	@Override
	public void deleteEmployee(int employeeId) {
		try {
			dao.deleteEmployee(employeeId);
		}catch (Exception e) {
			e.printStackTrace();
			if(e instanceof HrmException) {
//				System.out.println("인사과 삭제 하다 에러");
			}
		}
	}

	@Override
	public List<Emp> findAllEmployees() {
		try {
			return dao.findAllEmployees();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<String> findAllTitles() {
		try {
			return dao.findAllTitles();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Emp findEmployeeById(int id) {
		try {
			return dao.findEmployeeById(id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Emp> findLikeEmployees(String name) {
		try {
			return dao.findLikeEmployees(name);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int getEmployeesTotal() {
		return dao.getEmployeesTotal();
	}

	@Override
	public void updateEmployee(Emp emp) {
		try {
			dao.updateEmployee(emp);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}



}
