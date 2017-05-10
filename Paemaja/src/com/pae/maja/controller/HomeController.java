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
public class HomeController {

    private static final Logger logger =
            LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "main.do", method = RequestMethod.GET)
    public String home(Model model) throws Exception {

        logger.info("Welcome HomeController home---------------------------------!");
        return "main.tiles";
    }


}
