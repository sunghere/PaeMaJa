package com.pae.maja.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@RequestMapping(value = "loginaf.do", method = RequestMethod.GET)
	@ResponseBody
	public String loginaf(Model model) throws Exception {

		logger.info("Welcome HomeController write---------------------------------!");
		return "write.tiles";
	}

}
