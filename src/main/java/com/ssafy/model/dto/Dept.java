package com.ssafy.model.dto;

import java.util.List;

public class Dept {
	private int dept_id;
	private String name;
	private int region_id;
	private List<Emp> employees;
	public List<Emp> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Emp> employees) {
		this.employees = employees;
	}
	public Dept() {
		super();
	}
	public Dept(int dept_id, String name, int region_id) {
		super();
		this.dept_id = dept_id;
		this.name = name;
		this.region_id = region_id;
	}
	@Override
	public String toString() {
		return "Dept [dept_id=" + dept_id + ", name=" + name + ", region_id=" + region_id + "]";
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRegion_id() {
		return region_id;
	}
	public void setRegion_id(int region_id) {
		this.region_id = region_id;
	}
}
