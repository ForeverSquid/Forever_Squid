package com.Forever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Forever.model.Userhome;

@Controller
@RequestMapping("/peohome")
public class PeoHome {
	
	@RequestMapping("/peoShowToHome")
	public String aboutUs(){
		return "peoHomePage";
	}
	
	@RequestMapping("/secondRegister")
	public String secondRegister(Userhome userh){
		System.out.println(userh.getRegion());
		
		return "peoHomePage";
	}
}
