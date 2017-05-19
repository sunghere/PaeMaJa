package com.pae.maja.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pae.maja.pmacomment.model.PMAComment;

@Controller
public class CommentController
{
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@RequestMapping(value = "comment.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String write(Model model, PMAComment dto) throws Exception {
		logger.info("Welcome ShopController write           =====   ");
		logger.info("Welcome ShopController write           =====   "+dto);
		/*String[] temp=ff.split("<img");
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
		logger.info(imgFile+"  ,  "+dto);*/
		return "shopdetail.do";
	}
}
