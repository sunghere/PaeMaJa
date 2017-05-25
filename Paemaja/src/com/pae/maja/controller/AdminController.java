package com.pae.maja.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pae.maja.pmauser.dao.PMAUserService;
import com.pae.maja.pmauser.model.PMAUser;
/**
 * Created by SungHere on 2017-04-17.
 */
@Controller
public class AdminController {
    private static final Logger logger =
            LoggerFactory.getLogger(AdminController.class);

    @Autowired
	private PMAUserService service;
    
    @RequestMapping(value = "manager.do", method = RequestMethod.GET)
    public String home(Model model) throws Exception {

        logger.info("Welcome AdminController manager---------------------------------!");
//        model.addAttribute("shoplist", service.getShopList());
        return "manager.tiles";
    }
    
    @RequestMapping(value = "userinfomodify.do", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public String userinfomodify(PMAUser user,Model model) throws Exception {
    	logger.info("++++++++++++++++++++"+user);
		String s="";
		service.updateUserGrade(user);
		s="suc";
		return s;
	}
}
