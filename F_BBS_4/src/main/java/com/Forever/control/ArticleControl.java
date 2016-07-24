package com.Forever.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Forever.service.ArticleServiceImpl;
import com.Forever.service.IArticleService;
import com.Forever.vo.Article;
import com.Forever.vo.PageBean;
import com.Forever.vo.User;

@WebServlet(name="Article",urlPatterns="/article.do")
public class ArticleControl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IArticleService service=new ArticleServiceImpl();
	/**
	 * Constructor of the object.
	 */
	public ArticleControl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action=request.getParameter("action");
		RequestDispatcher dispatcher=null;
		if(action.equals("page")){
			List<Article> list=service.queryArticles();

			int curpage=Integer.parseInt(request.getParameter("curpage"));
			String userid=request.getParameter("usrid");

			PageBean pb=service.queryAByP(curpage,Integer.parseInt(userid));

			request.setAttribute("alist", list);
			request.setAttribute("alist_pb", pb);

			try {
				dispatcher=request.getRequestDispatcher("show.jsp");
				dispatcher.forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}else if(action.equals("delz")){
			int id=Integer.parseInt(request.getParameter("id"));//主贴id
			if(service.delArticle(id)){
				//article.do?curpage=1&usrid=${usrid}&action=page
				try {
					User user=(User)request.getSession().getAttribute("bbsuser");

					dispatcher=request.getRequestDispatcher("article.do?curpage=1&usrid="+user.getId()+"&action=page");
					dispatcher.forward(request, response);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}else if(action.equals("addz")){
			Article article=new Article();
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			article.setTitle(title);
			article.setContent(content);
			article.setRootid(0);
			User user=(User)request.getSession().getAttribute("bbsuser");
			article.setUser(user);

			if(service.addArticle(article)){
				try {

					dispatcher=request.getRequestDispatcher("article.do?curpage=1&usrid="+user.getId()+"&action=page");
					dispatcher.forward(request, response);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}else if(action.equals("queryid")){// 查询从贴
			String id=request.getParameter("id");
			String cts=service.queryCT(Integer.parseInt(id));
			
			
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.print(cts);
			
			out.flush();
			out.close();
			
		}else if(action.equals("reply")){//回灌从贴
			String rootid=request.getParameter("rootid");
			Article a=new Article();			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			a.setTitle(title);
			a.setContent(content);
			a.setRootid(Integer.parseInt(rootid));//回帖，就不是0，是主贴的id
			User user=(User)request.getSession().getAttribute("bbsuser");
			a.setUser(user);
			if(service.addArticle(a)){
				try {
					
							
					dispatcher=request.getRequestDispatcher("article.do?action=queryid&id="+rootid);
					dispatcher.forward(request, response);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}else if(action.equals("delc")){//删除从贴
			int id=Integer.parseInt(request.getParameter("id"));//从贴的主键id
			int rootid=Integer.parseInt(request.getParameter("rootid"));//主贴
			if(service.delArticle(id)){
				
				//article.do?curpage=1&usrid=${usrid}&action=page
				try {
					User user=(User)request.getSession().getAttribute("bbsuser");
							
					dispatcher=request.getRequestDispatcher("article.do?action=queryid&id="+rootid);
					dispatcher.forward(request, response);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
