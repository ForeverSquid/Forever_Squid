package com.Forever.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.Forever.po.User;
import com.Forever.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{

	private HttpServletRequest request ;
	private HttpServletResponse response ;
	private UserService service;
	private String username;
	private String password;

	public String login(){
		request = ServletActionContext.getRequest();
		User user=service.login(username, password);
		if(user.getId()!=0){
			request.getSession().setAttribute("user", user.getUsername());
			request.getSession().setAttribute("id", user.getId());
		}else{
			request.getSession().setAttribute("err", "登录失败！请重新登录！");
		}
		return "welcome";
	}

	public void dianzan(){

		//	System.out.println(request.getParameter("h_id"));
		response = ServletActionContext.getResponse();
		String tip = String.valueOf(service.getZanMethod(request.getParameter("h_id")));
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = null;
		try {
			pw = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		pw.write(tip);
		pw.flush();
		pw.close();
		System.out.println("经过ajax第3阶段");
	}

	public String register(){
		service.register(username, password);
		return "success";
	}

	public String pinglun(){
		
		String mul_id = request.getSession().getAttribute("mul_id").toString();
		String user_id = request.getSession().getAttribute("id").toString();
		String mes = request.getParameter("mes");
		service.addmes(user_id, mul_id, mes);
		return "pinglunye";
	}
	
	// 以下是属性封装代码---------------------------------------------------------------------


	public String getUsername() {
		return username;
	}


	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
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

}
