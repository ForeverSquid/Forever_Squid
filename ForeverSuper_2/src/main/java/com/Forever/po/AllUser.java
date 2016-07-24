package com.Forever.po;

public class AllUser {

	private int id;
	private String username;
	private String password;
	private String address;
	private String date;
	private String FName;
	private int id_zhujian;
	private int zan;
	
	
	public int getZan() {
		return zan;
	}
	public void setZan(int zan) {
		this.zan = zan;
	}
	public int getId_zhujian() {
		return id_zhujian;
	}
	public void setId_zhujian(int id_zhujian) {
		this.id_zhujian = id_zhujian;
	}
	public String getFName() {
		return FName;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
