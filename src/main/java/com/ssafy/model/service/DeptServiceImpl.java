package com.ssafy.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.model.dao.DeptDao;
import com.ssafy.model.dao.EmpDao;
import com.ssafy.model.dto.Dept;
import com.ssafy.model.dto.Emp;
import com.ssafy.model.dto.HrmException;

@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	private DeptDao dao;
	@Override
	public List<Dept> findAllDepartments() {
		try {
			return dao.findAllDepartments();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public Dept findDeptByIdWithEmployees(int id) throws Exception {
		try {
		return dao.findDeptByIdWithEmployees(id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
