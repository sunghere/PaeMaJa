package com.pae.maja.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController
{
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "infomodify.do", method = RequestMethod.GET)
	public String infomodify(Model model) throws Exception {

		logger.info("Welcome UserController ---------------------------------!");
		return "infomodify.tiles";
	}
	
		
	@RequestMapping(value = "userdelete.do", method = RequestMethod.GET)
	public String userdelete(Model model) throws Exception {

		logger.info("Welcome UserController ---------------------------------!");
		return "userdelete.tiles";
	}
	
	
	
	
	@RequestMapping(value = "passcheck.do", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String passcheck(String id,String pass,String pwd,Model model) throws Exception {
		if(id.contains("@")){
			if(pass.equals(id)){return "kakao";} //<- 추후에 true로 바꿀 예정
			else if(pass==""||pass.equals("")){return "notInput";}
			else if(!pass.equals(id)){return "fail";}
		} else if(pass.equals("")||pass==""){return "notInput";}
		else if(pass.equals(pwd)){return "true";}
		else if(!pass.equals(pwd)){return "fail";}
		
		logger.info("Welcome UserController passcheck---------------------------------!");
		return "error";
	}
	
}
