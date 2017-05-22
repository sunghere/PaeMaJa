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
	
	@RequestMapping(value = "blacklist.do", method = RequestMethod.GET)
	public String blacklist(Model model) throws Exception {

		logger.info("Welcome UserController ---------------------------------!");
		return "blacklist.tiles";
	}
	
	@RequestMapping(value = "writinglist.do", method = RequestMethod.GET)
	public String writinglist(Model model) throws Exception {

		logger.info("Welcome UserController ---------------------------------!");
		return "writinglist.tiles";
	}
		
	@RequestMapping(value = "userdelete.do", method = RequestMethod.GET)
	public String userdelete(Model model) throws Exception {

		logger.info("Welcome UserController ---------------------------------!");
		return "userdelete.tiles";
	}
	
	
	
	
	@RequestMapping(value = "passcheck.do", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String passcheck(String pass,String pwd,Model model) throws Exception {
		String result="";
		if(pass.equals(pwd))
		{
			result="success";
		}
		else
		{
			result="fail";
		}
		logger.info("Welcome UserController passcheck---------------------------------!");
		return result;
	}
	
}
