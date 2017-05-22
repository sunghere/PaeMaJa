package com.pae.maja.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pae.maja.pmashop.dao.PMAShopService;

/**
 * Created by SungHere on 2017-04-17.
 */
@Controller
public class AdminController {
    private static final Logger logger =
            LoggerFactory.getLogger(AdminController.class);

    @RequestMapping(value = "manager.do", method = RequestMethod.GET)
    public String home(Model model) throws Exception {

        logger.info("Welcome AdminController manager---------------------------------!");
//        model.addAttribute("shoplist", service.getShopList());
        return "manager.tiles";
    }
    
}
