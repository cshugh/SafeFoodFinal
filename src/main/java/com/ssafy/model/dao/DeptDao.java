package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Dept;
import com.ssafy.model.dto.Emp;

@Mapper
public interface DeptDao {
	//모든 부서의 정보를 반환한다.
	public List<Dept> findAllDepartments();
	public Dept findDeptByIdWithEmployees(int id) throws Exception;
}
