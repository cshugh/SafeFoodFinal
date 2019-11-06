//package com.ssafy.controller;
//
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.ssafy.model.dto.Dept;
//import com.ssafy.model.dto.Emp;
//import com.ssafy.model.service.DeptService;
//import com.ssafy.model.service.EmpService;
//
//import io.swagger.annotations.ApiOperation;
//
///*//
//
//@RequestMapping("/api")
//@Api(value="SSAFY")*/
//@CrossOrigin(origins = {"*"}, maxAge = 6000)
////화면 만들때 프론트에서 띄우고 부트에서 띄우면 서버가 다르니까 도메인이 달라짐
////출처가 달라서(도메인이 다르면) 비동기요청이 막힘
////동일출처의 원칙이 위배되어 브라우저가 막으므로 출처들의 허용(출처의 도메인을 적음)
////우리랑 협약을 맺은 특정 도메인들만 도메인Url을 ,로 주면됨
////방식 지원하는지 요청보내서 받음(미리확인). 매번 확인하지 않도록 캐싱타임을 줌 (6000초)
////
//@RestController
//public class EmployeeRestController {
//	@Autowired
//	private EmpService empService;
//	@Autowired
//	private DeptService deptService;
//	
//	@ExceptionHandler
//	public ResponseEntity<Map<String, Object>> handle(Exception e){
//		return handleFail(e.getMessage(), HttpStatus.OK);
//	}
//	public ResponseEntity<Map<String, Object>> handleSuccess(Object data){
//		Map<String, Object> resultMap = new HashMap<String, Object>();
//		resultMap.put("state", "ok");
//		resultMap.put("data", data);
//		return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
//	}
//	public ResponseEntity<Map<String, Object>> handleFail(Object data, HttpStatus state){
//		Map<String, Object> resultMap = new HashMap<String, Object>();
//		resultMap.put("state", "fail");
//		resultMap.put("data", data);
//		return new ResponseEntity<Map<String,Object>>(resultMap, state); 
//	}
//	@ApiOperation("새로운 사원 정보를 입력한다. 그리고 그 사원의 사원번호를 반환한다.")
//	@PostMapping("/api/addEmployee")
//	public ResponseEntity<Map<String, Object>> addEmployee(@RequestBody Emp emp){
//		empService.addEmployee(emp);
//		int newId = emp.getId();
////		NumberResult nr = NubmerResult();
//		return handleSuccess("등록 완료");
//	}
//	@ApiOperation("해당사원의 정보를 삭제한다. 사원의 정보를 삭제하기 전, 정산하고, 잡히스토리 수정 등 여러 작업을 해야한다.여기서는 히스토리를 모두 지우고(수정한 적이 없다면 바로 삭제 가능) 삭제할 수 있다.")
//	@DeleteMapping("/api/deleteEmployee/{employeeid}")
//	public ResponseEntity<Map<String, Object>> deleteEmployee(@PathVariable int employeeid){
//		empService.deleteEmployee(employeeid); 
//		return handleSuccess("삭제 완료");
//	}
//	@ApiOperation("모든 부서의 정보를 반환한다.")
//	@GetMapping("api/findAllDepartments")
//	public ResponseEntity<Map<String, Object>> findAllDepartments(){
//		List<Dept> deptList = deptService.findAllDepartments();
//		return handleSuccess(deptList);
//	}
//	@ApiOperation("모든 사원의 정보를 반환한다.")
//	@GetMapping("api/findAllEmployees")
//	public ResponseEntity<Map<String, Object>> findAllEmployees(){
//		List<Emp> empList = empService.findAllEmployees();
//		return handleSuccess(empList);
//	}
//	@ApiOperation("모든 직책을 반환한다.")
//	@GetMapping("api/findAllTitles")
//	public ResponseEntity<Map<String, Object>> findAllTitles(){
//		List<String> titleList = empService.findAllTitles();
//		return handleSuccess(titleList);
//	}
//	@ApiOperation("사원아이디로 사원의 정보를 찾는다.")
//	@GetMapping("api/findEmployeeById/{id}")
//	public ResponseEntity<Map<String, Object>> findEmployeeById(@PathVariable int id){
//		return handleSuccess(empService.findEmployeeById(id));
//	}
//	@ApiOperation("이름의 일부분에 해당하는 사원의 정보를 반환한다.")
//	@GetMapping("api/findLikeEmployees/{name}")
//	public ResponseEntity<Map<String, Object>> findLikeEmployees(@PathVariable String name){
//		List<Emp> empListByName = empService.findLikeEmployees(name);
//		return handleSuccess(empListByName);
//	}
//	@ApiOperation("모든 사원의 수를 반환한다.")
//	@GetMapping("api/getEmployeesTotal")
//	public ResponseEntity<Map<String, Object>> getEmployeesTotal(){
//		int empTotal = empService.getEmployeesTotal();
//		return handleSuccess(Integer.valueOf(empTotal));
//	}
//	@ApiOperation("사원의 정보를 수정한다.만약 사원의 부서와 업무가 변경되면 잡히스토리에 자동으로 추가된다.")
//	@PutMapping("api/updateEmployee")
//	public ResponseEntity<Map<String, Object>> updateEmployee(@RequestBody Emp emp){
//		empService.updateEmployee(emp);
//		return handleSuccess("수정 완료");
//	}
//	@ApiOperation("사원아이디로 사원의 정보를 찾는다.")
//	@GetMapping("api/findDeptByIdWithEmployees/{id}")
//	public ResponseEntity<Map<String, Object>> findDeptByIdWithEmployees(@PathVariable int id) throws Exception{
//		return handleSuccess(deptService.findDeptByIdWithEmployees(id));
//	}
//}
