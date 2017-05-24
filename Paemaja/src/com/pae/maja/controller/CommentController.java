package com.pae.maja.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pae.maja.pmacomment.dao.PMACommentService;
import com.pae.maja.pmacomment.model.PMAComment;

import sun.print.resources.serviceui;

@Controller
public class CommentController
{
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Autowired
	private PMACommentService service;
	
	
	@RequestMapping(value = "commentadd.do", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String write(Model model, PMAComment dto, int pseq) throws Exception {
		String state="fail";
		logger.info("Welcome ShopController write           =====   ");
		logger.info("Welcome ShopController write           =====   "+dto+"   ,   "+pseq);
		String[] temp=dto.getContent().split("<img");
		String imgFile="";
		String test="";
		int i=0;
		for(String s : temp)
		{
			if(s.contains("src=\""))
			{
				String[] asd=s.substring(s.indexOf("src=")).split("\"");
				imgFile=asd[1];
				test+=asd[4].substring((asd[4].indexOf("/>"))+2);
			}
			else
			{
				test+=temp[i];
			}
			i++;
		}
		dto.setContent(test);
		dto.setImg(imgFile);
		service.writeComment(dto);
		state="true";
		logger.info(test);
		return state;
	}
	
	@RequestMapping(value = "detailrepl.do", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public List<PMAComment> detail2(String search, Model model,String pseq) throws Exception {
		logger.info("Welcome detailrepl detailrepl---------------------------------!"+pseq);
		List<PMAComment> list=service.getCommentList(Integer.parseInt(pseq));

		logger.info("Welcome detailrepl detailrepl---------------------------------!"+list);
		return list;
	}
	
	@RequestMapping(value = "commentconfig.do", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public List<PMAComment> commentconfig(Model model) throws Exception {
		List<PMAComment> list=service.getAllCommentList();
		return list;
	}
}
