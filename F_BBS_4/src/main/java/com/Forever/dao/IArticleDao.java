package com.Forever.dao;

import java.util.List;

import com.Forever.vo.*;
import com.Forever.vo.ReArticle;

public interface IArticleDao {

	public List<Article> queryArticles();
	public PageBean queryAByP(int curpage,int userid);
	public boolean delArticle(int id);
	public boolean addArticle(Article article);
	public ReArticle queryCT(int id);
}
