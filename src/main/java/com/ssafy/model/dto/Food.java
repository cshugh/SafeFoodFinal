package com.ssafy.model.dto;

import java.util.List;

public class Food {
	int code;
	String name;
	String maker;
	String material;
	
	//식품이 가지고있는 알레르기 유발가능 재료들
	String allergyIngredients; //변수 첫글자를 대문자로 하면 못알아먹어 not found됨.

	//해당 재료들 Stirng을 List형태로 저장
	List<String> listAllergy;

	//원산지 
	String nation;
	
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	

	public String getAllergyIngredients() {
		return allergyIngredients;
	}
	public void setAllergyIngredients(String allergyIngredients) {
		this.allergyIngredients = allergyIngredients;
	}


	int supportpereat;
	double calory;
	double carbo;
	double protein;
	double fat;
	double sugar;
	double natrium;
	double chole;
	double fattyacid;
	double transfat;
	String img;
	
	
	
	public List<String> getListAllergy() {
		return listAllergy;
	}
	public void setListAllergy(List<String> listAllergy) {
		this.listAllergy = listAllergy;
	}
	public Food() {}
	public Food(int code, String name, String maker, String material, int supportpereat, double calory,
			double carbo, double protein, double fat, double sugar, double natrium, double chole, double fattyacid,
			double transfat, String img) {
		super();
		this.code = code;
		this.name = name;
		this.maker = maker;
		this.material = material;
		this.supportpereat = supportpereat;
		this.calory = calory;
		this.carbo = carbo;
		this.protein = protein;
		this.fat = fat;
		this.sugar = sugar;
		this.natrium = natrium;
		this.chole = chole;
		this.fattyacid = fattyacid;
		this.transfat = transfat;
		this.img = img;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public int getsupportpereat() {
		return supportpereat;
	}
	public void setsupportpereat(int servingWt) {
		this.supportpereat = servingWt;
	}
	public double getCalory() {
		return calory;
	}
	public void setCalory(double calory) {
		this.calory = calory;
	}
	public double getCarbo() {
		return carbo;
	}
	public void setCarbo(double carbo) {
		this.carbo = carbo;
	}
	public double getProtein() {
		return protein;
	}
	public void setProtein(double protein) {
		this.protein = protein;
	}
	public double getFat() {
		return fat;
	}
	public void setFat(double fat) {
		this.fat = fat;
	}
	public double getSugar() {
		return sugar;
	}
	public void setSugar(double sugar) {
		this.sugar = sugar;
	}
	public double getNatrium() {
		return natrium;
	}
	public void setNatrium(double natrium) {
		this.natrium = natrium;
	}
	public double getChole() {
		return chole;
	}
	public void setChole(double chole) {
		this.chole = chole;
	}
	public double getFattyacid() {
		return fattyacid;
	}
	public void setFattyacid(double fattyacid) {
		this.fattyacid = fattyacid;
	}
	public double getTransfat() {
		return transfat;
	}
	public void setTransfat(double transfat) {
		this.transfat = transfat;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	

	@Override
	public String toString() {
		return "Food [code=" + code + ", name=" + name + ", maker=" + maker + ", material=" + material
				+ ", AllergyIngredients=" + ", supportpereat=" + supportpereat + ", calory="
				+ calory + ", carbo=" + carbo + ", protein=" + protein + ", fat=" + fat + ", sugar=" + sugar
				+ ", natrium=" + natrium + ", chole=" + chole + ", fattyacid=" + fattyacid + ", transfat=" + transfat
				+ ", img=" + img + "]";
	}

	
}
