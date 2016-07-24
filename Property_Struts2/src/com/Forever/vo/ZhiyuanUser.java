package com.Forever.vo;

import java.io.Serializable;

public class ZhiyuanUser implements Serializable{

	
	private int id;
	private String name;
	private String zhiwei;
	private int yuexin;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZhiwei() {
		return zhiwei;
	}
	public void setZhiwei(String zhiwei) {
		this.zhiwei = zhiwei;
	}
	public int getYuexin() {
		return yuexin;
	}
	public void setYuexin(int yuexin) {
		this.yuexin = yuexin;
	}
	
}
