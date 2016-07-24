package com.Forever.vo;

import java.io.Serializable;
import java.util.List;

public class ReArticle implements Serializable {
	private List<Article> list;//回帖
	private String title;//主贴的标题
	public List<Article> getList() {
		return list;
	}
	public void setList(List<Article> list) {
		this.list = list;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
