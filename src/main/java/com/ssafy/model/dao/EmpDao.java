package com.ssafy.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.model.dto.Dept;
import com.ssafy.model.dto.Emp;

@Mapper
public interface EmpDao {
	//새로운 사원 정보를 입력한다. 그리고 그 사원의 사원번호를 반환한다.
	public int addEmployee(Emp emp);
	//해당사원의 정보를 삭제한다. 사원의 정보를 삭제하기 전, 정산하고, 잡히스토리 수정 등 여러 작업을 해야한다.
	//여기서는 히스토리를 모두 지우고(수정한 적이 없다면 바로 삭제 가능) 삭제할 수 있다.
	public void deleteEmployee(int employeeId);
	//모든 부서의 정보를 반환한다.
	public List<Dept> findAllDepartments();
	//모든 사원의 정보를 반환한다.
	public List<Emp> findAllEmployees();
	//모든 직책을 반환한다.
	public List<String> findAllTitles();
	//사원아이디로 사원의 정보를 찾는다.
	public Emp findEmployeeById(int id);
	//이름의 일부분에 해당하는 사원의 정보를 반환한다.
	public List<Emp> findLikeEmployees(String name);
	//모든 사원의 수를 반환한다.
	public int getEmployeesTotal();
	//사원의 정보를 수정한다.만약 사원의 부서와 업무가 변경되면 잡히스토리에 자동으로 추가된다.
	//이름 다 똑같이 하면 되잖아.
	public void updateEmployee(Emp emp);
	
	
}
