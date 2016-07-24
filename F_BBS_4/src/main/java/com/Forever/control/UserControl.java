package com.Forever.control;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.jws.WebService;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Forever.service.IUserService;
import com.Forever.service.UserServiceImpl;
import com.Forever.vo.User;

@WebServlet(name="woqu",urlPatterns={"/user.do"},
initParams={@WebInitParam(name="success",value="/")})
public class UserControl extends HttpServlet {

	private HashMap map=new HashMap();
	private UserServiceImpl service=new UserServiceImpl();
	public UserControl() {
		super();
	}

	public void destroy(){
		super.destroy();
	}

	public void doDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher=null;
		String action=request.getParameter("action");
		User user=new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user=service.login(user);
		
		String ct=request.getContentType();
		if(ct!=null&&ct.indexOf(";")!=-1){
			String value=ct.substring(0, ct.indexOf(";"));
			
			if(value.equals("multipart/form-data")){
				User user1=service.uploadPic(request);
				
				if(service.register(user1)){
					dispatcher=request.getRequestDispatcher(map.get("success").toString());
					dispatcher.forward(request, response);
				}
			}
			return ;
		}
		
		if(action.equals("login")){

			if(user!=null){

				if(request.getParameter("sun")!=null){  //勾上
					
					/*Cookie uc=new Cookie("http://bbs/username",user.getUsername());
					Cookie up=new Cookie("http://bbs/password",user.getPassword());
					
					response.addCookie(uc);
					response.addCookie(up);*/
				}

				request.getSession().setAttribute("bbsuser", user);
				dispatcher=request.getRequestDispatcher(map.get("success").toString());
				request.getSession().setAttribute("msg", "你好");
				dispatcher.forward(request, response);

			}else{

				request.getSession().removeAttribute("bbsuser");
				dispatcher=request.getRequestDispatcher(map.get("success").toString());
				request.getSession().setAttribute("msg", "对不起，你是非法用户！");

				dispatcher.forward(request, response);
			}
			
		}else if(action.equals("pic")){
			
			int id=Integer.parseInt(request.getParameter("id"));
			InputStream is=service.getPic(id);
			ServletOutputStream sos=response.getOutputStream();
			
			byte[] buffer=new byte[1024];
			int n=-1;
			
			while((n=is.read(buffer))!=-1){
				
				sos.write(buffer, 0, n);
			}
			is.close();
			sos.flush();
			sos.close();
			
		}else if(action.equals("page")){
			int count=Integer.parseInt(request.getParameter("row"));
			int userid=Integer.parseInt(request.getParameter("userid"));
			if(service.updatePagenum(count, userid)){
				try {
					
					dispatcher=request.getRequestDispatcher("index.jsp");
					dispatcher.forward(request, response);
					
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}else{
				System.out.println("修改Pagenum失败！");
			}
		}
	}

	public void init(ServletConfig config) throws ServletException {
		// Put your code here
		map.put("success", config.getInitParameter("success"));
	}

}
