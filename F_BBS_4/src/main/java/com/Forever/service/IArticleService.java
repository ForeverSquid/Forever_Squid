package com.Forever.service;

import java.util.List;

import com.Forever.vo.Article;
import com.Forever.vo.PageBean;

public interface IArticleService {

	public List<Article> queryArticles();
	public PageBean queryAByP(int curpage,int userid);
	public boolean delArticle(int id);
	public boolean addArticle(Article article);
	public String queryCT(int id) ;
}
