package com.Forever.vo;

import java.io.Serializable;
import java.util.List;

public class PageBean implements Serializable {
	private int curPage;
	private int maxPage;
	private int maxRowCount;
	private int rowsPerPage;
	public List<Article> data;
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getMaxRowCount() {
		return maxRowCount;
	}
	public void setMaxRowCount(int maxRowCount) {
		this.maxRowCount = maxRowCount;
	}
	public int getRowsPerPage() {
		return rowsPerPage;
	}
	public void setRowsPerPage(int rowsPerPage) {
		this.rowsPerPage = rowsPerPage;
	}
	public List<Article> getData() {
		return data;
	}
	public void setData(List<Article> data) {
		this.data = data;
	}
	
}
