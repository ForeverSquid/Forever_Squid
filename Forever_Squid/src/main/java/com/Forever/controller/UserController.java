package com.Forever.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Forever.model.User;
import com.Forever.service.*;

@Controller
@RequestMapping("/method/param")
public class UserController {

	@Autowired
	UserServiceImpl service ;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/welcome")
	public String welcome(){
		return "welcome";
	}

	@RequestMapping(value = "/top")
	public String top(){
		return "/pages/top";
	}

	@RequestMapping(value = "/weibo")
	public String weibo(){
		return "weibo";
	}

	@RequestMapping(value = "/about")
	public String about(){
		return "/about/MyJsp";
	}

	@RequestMapping(value = "/login")
	public ModelAndView createUser1(User user1) {
		ModelAndView mv=new ModelAndView();
		User user = service.login(user1);

		if(user!=null){
			session.setAttribute("user", user);
			mv.setViewName("welcome");
			return mv;
		}else{ 
			request.setAttribute("mess", null);
			mv.setViewName("welcome");
			return mv;     
		}
	}

	@RequestMapping(value = "/register")
	public ModelAndView register(User user) {
		ModelAndView mv=new ModelAndView();
		user.setAccount(100.0F);
		user.setRank("20");

		Date   now   =   new   Date();       
		SimpleDateFormat   dateFormat   =   new   SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//可以方便地修改日期格式       
		String  date  = dateFormat.format(now);       
		user.setRegisterDate(date);
		
		service.insert(user);
		mv.setViewName("pages/registerSuccess");
		return mv;
	}

	@RequestMapping("/delsession")
	public String delsession(){
		session.removeAttribute("user");
		return "/welcome";
	}
}
