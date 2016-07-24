package com.Forever.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Forever.model.Account;
import com.Forever.model.AccountExample;
import com.Forever.service.IAccountService;

@Controller
@RequestMapping("/user")
@SessionAttributes("/user")
public class UserController {
	
	@Autowired
	private IAccountService service;
	
	@RequestMapping("/lmain")
	public String lmain(){
		
		return "shop/login.ftl";
	}
	
	@RequestMapping(value={"/register"})
	public String register(@Valid Account account,BindingResult result,Map map){
		if(result.hasErrors()){
			return "shop/registerUser.ftl";
		}
		AccountExample example=new AccountExample();
		example.createCriteria().andUsernameEqualTo(account.getUsername());
		if(service.selectByExample(example).size()>0){
			map.put("rerror", "哥们你重名了！ 换一个名吧");
			return "shop/registerUser.ftl";
		}else{
			service.insert(account);
		}
		return "shop/login.ftl";
	}
	
	@RequestMapping(value={"/rmain"})
	public String rmain(){
		return "shop/registerUser.ftl";
	}
	
	@RequestMapping("/login")
	public String login(Account account,Model model){
		AccountExample example=new AccountExample();
		example.createCriteria().andUsernameEqualTo(account.getUsername()).andPasswordEqualTo(account.getPassword());
		List<Account> list=service.selectByExample(example);
		if(list.size()>0){
			Account a=list.iterator().next();
			model.addAttribute("user", a);
			model.addAttribute("lerror", "");
			return "shop/main.ftl";
		}else{
			model.addAttribute("lerror", "非法登陆！");
			return "shop/login.ftl";
		}
		
	}
	
}
