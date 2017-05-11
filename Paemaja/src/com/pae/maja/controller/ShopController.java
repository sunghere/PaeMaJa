package com.pae.maja.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pae.maja.pmashop.dao.PMAShopService;

/**
 * Created by SungHere on 2017-04-17.
 */
@Controller
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Autowired
	private PMAShopService service;

	@RequestMapping(value = "shopwrite.do", method = RequestMethod.GET)
	public String write(Model model) throws Exception {

		logger.info("Welcome ShopController write---------------------------------!");
		return "write.tiles";
	}

	@RequestMapping(value = "shopdetail.do", method = RequestMethod.GET)
	public String detail(int seq, Model model) throws Exception {

		logger.info("Welcome ShopController detail---------------------------------!" + seq);
		model.addAttribute("shopdetail", service.getShop(seq));
		return "shopdetail.tiles";
	}

}
