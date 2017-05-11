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
public class HomeController {
    private static final Logger logger =
            LoggerFactory.getLogger(HomeController.class);
    
    @Autowired
    private PMAShopService service;
    
    @RequestMapping(value = "main.do", method = RequestMethod.GET)
    public String home(Model model) throws Exception {

        logger.info("Welcome HomeController home---------------------------------!"+service.getShopList());
        model.addAttribute("shoplist", service.getShopList());
        return "main.tiles";
    }
}
