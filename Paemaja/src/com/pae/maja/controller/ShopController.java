package com.pae.maja.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pae.maja.pmashop.dao.PMAShopService;
import com.pae.maja.pmashop.model.PMAShopDTO;

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
		return "shopwrite.tiles";
	}

	@RequestMapping(value = "shopdetail.do", method = RequestMethod.GET)
	public String detail(int seq, Model model) throws Exception {

		logger.info("Welcome ShopController detail---------------------------------!" + seq);
		model.addAttribute("shopdetail", service.getShop(seq));
		return "shopdetail.tiles";
	}

	@RequestMapping(value = "shopreply.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String shopreply(int seq, Model model) throws Exception {

		logger.info("Welcome ShopController shopreply---------------------------------!" + seq);
//		model.addAttribute("shopreply", service.getShop(seq));
		return "shopdetail.tiles";
	}
	
	@RequestMapping(value = "shopwriteaf.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String write(Model model, PMAShopDTO dto, String ff) throws Exception {
		logger.info("Welcome ShopController write           =====   "+ff);
		String[] temp=ff.split("<img");
		String imgFile="";
		for(String s : temp)
		{
			if(s.contains("src=\""))
			{
				String[] asd=s.substring(s.indexOf("src=")).split("\"");
				imgFile=asd[1];
			}
		}
		dto.setContent(ff);
		dto.setImgFile(imgFile);
		service.writeShop(dto);
		logger.info(imgFile+"  ,  "+dto);
		return "main.tiles";
	}
	
	
	@RequestMapping(value = "searchregion.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchregion(String search, Model model) throws Exception {
        model.addAttribute("shoplist", service.searchShopListRegion(search));

		logger.info("Welcome ShopController searchregion---------------------------------!"+search);
		return "shopsearch.tiles";
	}
	
	@RequestMapping(value = "search.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String search(String search, Model model) throws Exception {
        model.addAttribute("shoplist", service.searchShopList(search));

		logger.info("Welcome ShopController searchregion---------------------------------!"+search);
		return "shopsearch.tiles";
	}
	
}
