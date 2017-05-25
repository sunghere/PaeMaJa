package com.pae.maja.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pae.maja.forb.dao.ForbService;
import com.pae.maja.forb.model.Forb;

@Controller
public class ForbController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Autowired
	private ForbService service;
	
	
	@RequestMapping(value = "getforb.do", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public List<Forb> getforb(String search, Model model,String pseq) throws Exception {

		return list;
	}
	

}