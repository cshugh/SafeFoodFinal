package com.ssafy.model.dto;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
	private String id        ;
	private String password  ;
	private String name      ;
	private String email     ;
	private String phone     ;
	private String address   ;
	private String allergy	;
	private List<Food> foodList;
	public List<Food> getFoodList() {
		return foodList;
	}
	public void setFoodList(List<Food> foodList) {
		this.foodList = foodList;
	}
	public User(String id, String password, String name, String email, String phone, String address, String allergy,
			List<Food> foodList) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.allergy = allergy;
		this.foodList = foodList;
	}
	
	public User(String id, String password, String name, String phone, String allergy) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.allergy = allergy;
	}
	public String getAllergy() {
		return allergy;
	}
	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	public User() {}
	public User(String id, String name, String email, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
	public User(String id, String password, String name, String email, String phone, String address) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	public User(String id, String password, String name, String email, String phone, String address, String allergy) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.allergy = allergy;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", allergy="
				+ allergy + "]";
	}

	
}
