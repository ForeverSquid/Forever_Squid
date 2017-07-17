package com.Forever.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Forever.model.User;
import com.Forever.model.Userhome;
import com.Forever.service.UserHomeServiceImpl;

@Controller
@RequestMapping("/peohome")
public class PeoHome {
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private HttpSession session ;
	
	@Autowired
	private UserHomeServiceImpl serviceDao;
	
	private Userhome h_user = new Userhome();    //自动装配失败，必须手动实例化   为什么？？？？？？
	
	@RequestMapping("/peoShowToHome")
	public String aboutUs(){
		h_user.setU_id(((User)session.getAttribute("user")).getId());
		Userhome huser = serviceDao.selectAll(h_user);
		session.setAttribute("huser", huser);
		return "peoHomePage";
	}
	
	@RequestMapping("/secondRegister")
	public String secondRegister(Userhome userh){
		userh.setU_id(Integer.parseInt(request.getParameter("id")));
		serviceDao.updateUserHome(userh);
		return "peoHomePage";
	}
}
