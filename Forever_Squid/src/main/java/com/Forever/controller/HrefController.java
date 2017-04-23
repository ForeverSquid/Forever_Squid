package com.Forever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/href")
public class HrefController {
	
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		return "/about/aboutUs";
	}
	
	@RequestMapping("/flay")
	public String flay(){
		return "/game/feixing";
	}
	
	@RequestMapping("/bbs")
	public String bbs(){
		return "/about/bbs";
	}
	
	@RequestMapping("/business")
	public String business(){
		return "/about/business";
	}
	
	@RequestMapping("/copyright")
	public String copyright(){
		return "/about/copyright";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "/login";
	}
	
	
	@RequestMapping("/register")
	public String register(){
		return "/register";
	}
	
	@RequestMapping("/feedback")
	public String feedback(){
		return "/about/feedback";
	}
	
	@RequestMapping("/href")
	public String href(){
		return "/about/href";
	}
	
	@RequestMapping("/introduction")
	public String introduction(){
		return "/about/introduction";
	}
	
	@RequestMapping("/joinUs")
	public String joinUs(){
		return "/about/joinUs";
	}
	
	@RequestMapping("/musicService")
	public String musicService(){
		return "/about/musicService";
	}
	
	@RequestMapping("/somePeop")
	public String somePeop(){
		return "/about/somePeop";
	}
	
	@RequestMapping("/problem")
	public String problem(){
		return "/about/problem";
	}
	
	@RequestMapping("/userHelp")
	public String userHelp(){
		return "/about/userHelp";
	}
	
	@RequestMapping("/test")
	public String test(){
		return "/test";
	}
	
	@RequestMapping("/music")
	public String music(){
		return "/music";
	}
	
	@RequestMapping("/cloud")
	public String cloud(){
		return "/pages/cloud";
	}
	
	@RequestMapping("/peopShow")
	public String peopShow(){
		return "/peopShow";
	}
	
	@RequestMapping("/secondRegister")
	public String secondRegister(){
		return "/pages/secondRegister";
	}
}
