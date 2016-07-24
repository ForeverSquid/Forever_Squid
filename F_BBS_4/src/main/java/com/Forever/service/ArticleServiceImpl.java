package com.Forever.service;

import java.util.List;

import com.Forever.dao.ArticleImpl;
import com.Forever.dao.IArticleDao;
import com.Forever.vo.Article;
import com.Forever.vo.PageBean;
import com.alibaba.fastjson.JSONArray;
import com.Forever.service.ArticleServiceImpl;

public class ArticleServiceImpl implements IArticleService {

	private IArticleDao rdao=new ArticleImpl();
	
	@Override
	public List<Article> queryArticles() {
		// TODO Auto-generated method stub
		return rdao.queryArticles();
	}
	
	@Override
	public PageBean queryAByP( int curpage,int userid) {
		// TODO Auto-generated method stub
		return rdao.queryAByP(curpage,userid);
	}

	@Override
	public boolean delArticle(int id) {
		// TODO Auto-generated method stub
		return rdao.delArticle(id);
	}

	@Override
	public boolean addArticle(Article article) {
		// TODO Auto-generated method stub
		return rdao.addArticle(article);
	}
	@Override
	public String queryCT(int id) {
		// TODO Auto-generated method stub
		return 	JSONArray.toJSONString(rdao.queryCT(id));
	}
	public static void main(String[] args) {
		System.out.println(new ArticleServiceImpl().queryCT(1));
	}
}
