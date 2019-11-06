package com.ssafy.model.service;

import java.util.List;

import com.ssafy.model.dto.Dept;
import com.ssafy.model.dto.Emp;

public interface DeptService {
	public Dept findDeptByIdWithEmployees(int id) throws Exception;
	public List<Dept> findAllDepartments();
}
