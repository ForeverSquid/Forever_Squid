package com.Forever.dao;

import java.io.StringReader;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.Forever.db.DBCPDB;
import com.Forever.vo.Article;
import com.Forever.vo.PageBean;
import com.Forever.vo.User;
import com.Forever.vo.ReArticle;

public class ArticleImpl implements IArticleDao {
	private Connection conn;

	public ArticleImpl(){
		conn=DBCPDB.getConnection();
	}

	@Override
	public boolean addArticle(Article article){
		// TODO Auto-generated method stub

		PreparedStatement pstmt=null;
		boolean flag=false;
		try {
			String sql="insert into article(title,rootid,content,datetime,userid)"
					+ " values(?,?,?,NOW(),?)";
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, article.getTitle());
			pstmt.setInt(2, article.getRootid());
			StringReader reader=new StringReader(article.getContent());
			pstmt.setCharacterStream(3, reader,article.getContent().length());

			pstmt.setInt(4, article.getUser().getId());

			flag=pstmt.executeUpdate()>0?true:false;


		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}

	

	

	@Override
	public boolean delArticle(int id) {
		// TODO Auto-generated method stub
		String sql="delete from article where id=? or rootid=?";
		PreparedStatement pstmt=null;
		boolean flag=false;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,id);
			pstmt.setInt(2,id);
			flag=pstmt.executeUpdate()>0?true:false;
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			try {
				pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return flag;
	}

	@Override
	public List<Article> queryArticles() {
		// TODO Auto-generated method stub
		String sql="select * from article a ,bbsuser b where rootid=0 and a.userid=b.id order by a.id desc";
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Article> list=new ArrayList<Article>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Article a=new Article();
				a.setId(rs.getInt("a.id"));
				a.setRootid(rs.getInt("a.rootid"));
				a.setTitle(rs.getString("a.title"));
				a.setContent(rs.getString("a.content"));
				a.setDatetime(rs.getString("a.datetime"));
				User user=new User();
				user.setId(rs.getInt("b.id"));
				user.setPagenum(rs.getInt("pagenum"));
				user.setUsername(rs.getString("username"));
				a.setUser(user);
				list.add(a);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public PageBean queryAByP(int curpage,int userid) {
		// TODO Auto-generated method stub
		String sql="{call P_3(?,?,?,?,?)}";
		CallableStatement cs=null;
		ResultSet rs=null;
		ArrayList<Article> list=new ArrayList<Article>();
		PageBean pb=new PageBean();
		try {
			cs=conn.prepareCall(sql);
			cs.setString(1,userid+"");
			cs.setInt(2,curpage);
			cs.registerOutParameter(3, java.sql.Types.INTEGER);
			cs.registerOutParameter(4, java.sql.Types.INTEGER);
			cs.registerOutParameter(5, java.sql.Types.INTEGER);

			boolean flag=cs.execute();

			while(flag){
				rs=cs.getResultSet();

				while(rs.next()){
					Article a=new Article();
					a.setId(rs.getInt("a.id"));
					a.setRootid(rs.getInt("a.rootid"));
					a.setTitle(rs.getString("a.title"));
					a.setContent(rs.getString("a.content"));
					a.setDatetime(rs.getString("a.datetime"));
					User user=new User();
					user.setId(rs.getInt("b.id"));
					user.setPagenum(rs.getInt("pagenum"));
					a.setUser(user);
					list.add(a);
				}
				pb.setData(list);
				pb.setCurPage(curpage);
				pb.setMaxPage(cs.getInt(4));
				pb.setMaxRowCount(cs.getInt(3));
				pb.setRowsPerPage(cs.getInt(5));
				flag=cs.getMoreResults();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				cs.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return pb;
	}
	
private String queryTitle(int id) {//查询主贴的title
		
		PreparedStatement pstmt=null;
		String sql="select title from article where id=?";
		ResultSet rs=null;
		String title="";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()){
				title=rs.getString("title");
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		
		return title;
	
		
	}
	
	@Override
	public ReArticle queryCT(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt=null;
		List<Article> list=new ArrayList<Article>();
		ResultSet rs=null;
		ReArticle re=new ReArticle();
		try {
			String sql=
           
           "select a.userid userid , "+
                                "b.username username, "+
                                "b.pic pic, "+
                               " b.id bid, "+
                               " a.rootid, "+
                              "  a.title, "+
                              "  a.datetime, "+
                               " a.content, "+
                               " a.id aid "+
                               
                " from article a "+
                " join bbsuser b on(a.userid=b.id) "+
                " where a.rootid=?  "+
               "  order by a.id desc  ";
       
         
   
   
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				
				Article a=new Article();
				a.setId(rs.getInt("aid"));
				a.setTitle(rs.getString("title"));
				a.setContent(rs.getString("content"));
				a.setRootid(rs.getInt("rootid"));
				Date d=rs.getDate("datetime");
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
						
				a.setDatetime(sdf.format(d));
				User user=new User();
				user.setId(rs.getInt("bid"));
			
				user.setUsername(rs.getString("username"));
				
				user.setId(rs.getInt("userid"));
				
				a.setUser(user);
				
				list.add(a);
				
			}
			re.setTitle(queryTitle(id));
			
			
			re.setList(list);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return re;
	}

}