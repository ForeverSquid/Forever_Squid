package com.Forever.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.Forever.model.Userhome;
import com.Forever.service.UserHomeServiceImpl;

@Controller
@RequestMapping("/upload")
public class UploadController {

	@Autowired
	UserHomeServiceImpl service;
	
	@Autowired
	HttpServletRequest request;
	
	Userhome uh = new Userhome();
	
	@RequestMapping("fileUpload")
	public String  fileUpload2(@RequestParam("file") CommonsMultipartFile file) throws IOException {
		long  startTime=System.currentTimeMillis();
		System.out.println("fileName："+file.getOriginalFilename());
		/*String path="E:/"+new Date().getTime()+file.getOriginalFilename();*/
		String path="E:/"+file.getOriginalFilename();
		
		//修改数据库歌曲的url
		System.out.println(request.getParameter("fl"));
		uh.setU_id(Integer.parseInt(request.getParameter("fl")));
		uh.setMusic(path);
		service.savemusic(uh);
		
		File newFile=new File(path);
		//通过CommonsMultipartFile的方法直接写文件（注意这个时候）
		file.transferTo(newFile);
		long  endTime=System.currentTimeMillis();
		System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");
		return "peoHomePage"; 
	}
}
