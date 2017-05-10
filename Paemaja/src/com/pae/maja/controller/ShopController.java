package com.pae.maja.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by SungHere on 2017-04-17.
 */
@Controller
public class ShopController {

    private static final Logger logger =
            LoggerFactory.getLogger(ShopController.class);

    @RequestMapping(value = "write.do", method = RequestMethod.GET)
    public String write(Model model) throws Exception {

        logger.info("Welcome HomeController write---------------------------------!");
        return "write.tiles";
    }
    
    @RequestMapping(value = "detail.do", method = RequestMethod.GET)
    public String detail(Model model) throws Exception {

        logger.info("Welcome ShopController detail---------------------------------!");
        return "shopdetail.tiles";
    }

}

